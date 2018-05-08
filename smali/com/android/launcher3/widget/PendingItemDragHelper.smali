.class public Lcom/android/launcher3/widget/PendingItemDragHelper;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# instance fields
.field private final mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mEstimatedCellSize:[I

.field public mPreview:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    .line 55
    return-void
.end method


# virtual methods
.method protected final convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 163
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 164
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    iget v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 166
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 170
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v1, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    sub-int/2addr v0, v6

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int/2addr v2, v5

    div-int/2addr v2, v1

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 174
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v4, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    return-object v3

    .line 158
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 72
    iget-object v5, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    .line 73
    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 75
    nop

    .line 80
    iget-object v7, v5, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;)[I

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    .line 82
    iget-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_4

    .line 83
    iget-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 85
    int-to-float v9, v2

    const/high16 v10, 0x3fa00000    # 1.25f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    aget v10, v10, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 87
    new-array v14, v8, [I

    .line 89
    iget-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreview:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_0

    .line 90
    iget-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreview:Landroid/widget/RemoteViews;

    iget-object v10, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-static {v5, v8, v10, v9, v14}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->generateFromRemoteViews(Lcom/android/launcher3/BaseActivity;Landroid/widget/RemoteViews;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 93
    :cond_0
    move-object v8, v12

    :goto_0
    if-nez v8, :cond_1

    .line 94
    iget-object v6, v6, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v8, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    const/4 v10, 0x0

    move-object v7, v5

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 98
    :cond_1
    aget v6, v14, v13

    if-ge v6, v2, :cond_3

    .line 100
    aget v6, v14, v13

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    .line 101
    if-le v2, v3, :cond_2

    .line 102
    mul-int/2addr v6, v3

    div-int/2addr v6, v2

    .line 105
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 106
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 108
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 109
    iget-object v3, v5, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v6, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-direct {v6, v5, v7}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 143
    move/from16 v21, v2

    move-object v14, v8

    move-object/from16 v19, v12

    move-object/from16 v20, v19

    goto/16 :goto_1

    .line 114
    :cond_4
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 115
    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    iget-object v3, v6, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    invoke-static {v5}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v3

    .line 117
    invoke-virtual {v3, v2, v13}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 119
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 121
    new-instance v12, Landroid/graphics/Point;

    iget v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->previewPadding:I

    div-int/lit8 v6, v6, 0x2

    iget v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->previewPadding:I

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v12, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 125
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 126
    iget v7, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 128
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b004f

    .line 129
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 130
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 131
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 133
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 134
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    aget v10, v10, v13

    sub-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 135
    iget v10, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 136
    iget-object v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    aget v8, v10, v8

    sub-int/2addr v8, v7

    iget v10, v6, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v8, v10

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 138
    iget v6, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    .line 143
    move-object v14, v2

    move/from16 v21, v3

    move-object/from16 v20, v9

    move-object/from16 v19, v12

    :goto_1
    iget-object v2, v5, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object v0, v2, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 145
    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 146
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    add-int v15, v2, v3

    .line 147
    iget v2, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    .line 148
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v21

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    float-to-int v1, v1

    add-int v16, v2, v1

    .line 151
    iget-object v13, v5, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v17, p5

    move-object/from16 v18, v0

    move-object/from16 v22, p6

    invoke-virtual/range {v13 .. v22}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 153
    return-void
.end method
