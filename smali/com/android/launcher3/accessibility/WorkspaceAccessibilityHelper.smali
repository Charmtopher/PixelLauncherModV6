.class public Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final mTempCords:[I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    .line 41
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    .line 45
    return-void
.end method

.method public static getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/ItemInfo;

    .line 172
    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 173
    const v0, 0x7f0c007f

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    instance-of v0, p0, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 178
    const/4 v3, 0x0

    .line 179
    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 180
    if-eqz v3, :cond_1

    iget v5, v3, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iget v6, v4, Lcom/android/launcher3/ShortcutInfo;->rank:I

    if-le v5, v6, :cond_2

    .line 181
    :cond_1
    nop

    .line 183
    move-object v3, v4

    :cond_2
    goto :goto_0

    .line 185
    :cond_3
    if-eqz v3, :cond_4

    .line 186
    const p0, 0x7f0c007d

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :cond_4
    const v0, 0x7f0c007c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_5
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected final getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    rem-int v0, p1, v0

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v1, v1, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int/2addr p1, v1

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 122
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    .line 123
    if-eqz p1, :cond_4

    iget-object v0, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 127
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    instance-of p1, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c007e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :cond_2
    const-string p1, ""

    return-object p1

    .line 128
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c0080

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c007b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    rem-int v0, p1, v0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v1, v1, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int/2addr p1, v1

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final intersectsValidDropTarget(I)I
    .locals 17

    move-object/from16 v0, p0

    .line 53
    iget-object v2, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 54
    iget-object v3, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v3, v3, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 56
    rem-int v4, p1, v2

    .line 57
    div-int v5, p1, v2

    .line 58
    iget-object v6, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v6, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 60
    iget-object v7, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v8, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    const/4 v9, -0x1

    if-ne v7, v8, :cond_1

    iget-object v7, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget v7, v7, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    .line 61
    return v9

    .line 64
    :cond_1
    iget-object v7, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v8, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-ne v7, v8, :cond_9

    .line 67
    iget-object v1, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 72
    iget-object v6, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v6, v6, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 74
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_8

    .line 75
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_7

    .line 77
    nop

    .line 78
    sub-int v12, v4, v7

    .line 79
    sub-int v13, v5, v8

    .line 81
    if-ltz v12, :cond_6

    if-ltz v13, :cond_6

    .line 83
    move v14, v12

    const/4 v15, 0x1

    :goto_3
    add-int v10, v12, v1

    if-ge v14, v10, :cond_5

    .line 84
    if-eqz v15, :cond_5

    .line 85
    move v10, v13

    :goto_4
    add-int v11, v13, v6

    if-ge v10, v11, :cond_4

    .line 86
    if-ge v14, v2, :cond_3

    if-ge v10, v3, :cond_3

    iget-object v11, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v11, v14, v10}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_5

    .line 85
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 87
    :cond_3
    :goto_5
    nop

    .line 88
    nop

    .line 83
    const/4 v15, 0x0

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 92
    :cond_5
    if-eqz v15, :cond_6

    .line 93
    mul-int/2addr v2, v13

    add-int/2addr v12, v2

    return v12

    .line 75
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 97
    :cond_8
    return v9

    .line 100
    :cond_9
    iget-object v0, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_d

    iget-object v2, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v0, v2, :cond_a

    goto :goto_6

    .line 104
    :cond_a
    iget-object v2, v6, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-eq v2, v3, :cond_c

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 107
    instance-of v2, v0, Lcom/android/launcher3/AppInfo;

    if-nez v2, :cond_b

    instance-of v2, v0, Lcom/android/launcher3/FolderInfo;

    if-nez v2, :cond_b

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_c

    .line 109
    :cond_b
    return p1

    .line 112
    :cond_c
    return v9

    .line 103
    :cond_d
    :goto_6
    return p1
.end method

.method protected final onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
    .locals 5

    .line 139
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 144
    iget-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v0, v3

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result p1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v1, v1, v3

    iget-object v4, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 153
    iget-object p1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 154
    return-void
.end method
