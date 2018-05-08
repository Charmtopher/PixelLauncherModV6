.class public Lcom/android/launcher3/folder/FolderPagedView;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"


# static fields
.field static final sTmpArray:[I


# instance fields
.field public mAllocatedContentSize:I

.field private final mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field mFolder:Lcom/android/launcher3/folder/Folder;

.field mGridCountX:I

.field mGridCountY:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field public final mIsRtl:Z

.field mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

.field private final mMaxCountX:I

.field private final mMaxCountY:I

.field final mMaxItemsPerPage:I

.field final mPendingAnimations:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 95
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 96
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountX:I

    .line 97
    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountY:I

    .line 99
    iget p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountX:I

    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountY:I

    mul-int/2addr p2, v0

    iput p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    .line 104
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->setImportantForAccessibility(I)V

    .line 106
    new-instance p1, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 107
    return-void
.end method

.method public static calculateGridSize(IIIIII[I)V
    .locals 3

    .line 124
    nop

    .line 125
    nop

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, p5, :cond_0

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 135
    move p2, p3

    move p5, p4

    move p1, v1

    goto :goto_0

    .line 132
    :cond_0
    nop

    .line 135
    move p5, p2

    move p2, p1

    move p1, v0

    :goto_0
    if-nez p1, :cond_9

    .line 136
    nop

    .line 137
    nop

    .line 138
    mul-int p1, p2, p5

    if-ge p1, p0, :cond_4

    .line 140
    if-le p2, p5, :cond_1

    if-ne p5, p4, :cond_2

    :cond_1
    if-ge p2, p3, :cond_2

    .line 142
    add-int/lit8 p1, p2, 0x1

    .line 146
    move v2, p1

    goto :goto_1

    .line 143
    :cond_2
    if-ge p5, p4, :cond_3

    .line 144
    add-int/lit8 p1, p5, 0x1

    .line 146
    move v2, p2

    goto :goto_2

    :cond_3
    move v2, p2

    :goto_1
    move p1, p5

    :goto_2
    if-nez p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 147
    :cond_4
    add-int/lit8 p1, p5, -0x1

    mul-int v2, p1, p2

    if-lt v2, p0, :cond_5

    if-lt p5, p2, :cond_5

    .line 148
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 152
    move v2, p2

    goto :goto_4

    .line 149
    :cond_5
    add-int/lit8 p1, p2, -0x1

    mul-int v2, p1, p5

    if-lt v2, p0, :cond_6

    .line 150
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 152
    move v2, p1

    goto :goto_3

    :cond_6
    move v2, p2

    :goto_3
    move p1, p5

    :cond_7
    :goto_4
    if-ne v2, p2, :cond_8

    if-ne p1, p5, :cond_8

    .line 153
    move p2, v1

    goto :goto_5

    .line 152
    :cond_8
    nop

    .line 153
    move p2, v0

    .line 135
    :goto_5
    move p5, p1

    move p1, p2

    move p2, v2

    goto :goto_0

    .line 155
    :cond_9
    aput p2, p6, v0

    .line 156
    aput p5, p6, v1

    .line 157
    return-void
.end method


# virtual methods
.method public final addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
    .locals 8

    .line 221
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v0, p3, v0

    .line 222
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v1, p3, v1

    .line 224
    iput p3, p2, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 225
    iget p3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int p3, v0, p3

    iput p3, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 226
    iget p3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v0, p3

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 229
    iget p3, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput p3, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 230
    iget p3, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput p3, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget-object p3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p3, p3, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 232
    iget-wide p2, p2, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v5, p2

    .line 231
    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 233
    return-void
.end method

.method public final allocateSpaceForRank(I)V
    .locals 2

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 196
    return-void
.end method

.method public final arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 309
    return-void
.end method

.method final arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 315
    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 316
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    .line 317
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setupContentDimensions(I)V

    .line 321
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 322
    nop

    .line 324
    nop

    .line 327
    new-instance v4, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v4, v5}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 329
    nop

    .line 330
    move v6, v3

    move v8, v6

    move v9, v8

    const/4 v7, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v6, v1, :cond_9

    .line 331
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v6, :cond_1

    move-object/from16 v11, p1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    goto :goto_2

    :cond_1
    move-object/from16 v11, p1

    .line 332
    const/4 v12, 0x0

    :goto_2
    if-eqz v7, :cond_2

    iget v13, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    if-lt v8, v13, :cond_4

    .line 334
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    goto :goto_3

    .line 337
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/folder/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f04001c

    invoke-virtual {v8, v13, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    iget v13, v7, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iput v13, v8, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput v13, v8, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    iput v7, v8, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v7, v8, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iget-object v7, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v13, v8, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v14, v8, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v15, v8, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v7, v13, v14, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions$3b4dfe4b(III)V

    iget-object v7, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v7, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    iget-object v7, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-boolean v10, v7, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    iget v7, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v10, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-virtual {v8, v7, v10}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    const/4 v7, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v7, v10}, Lcom/android/launcher3/folder/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 339
    move-object v7, v8

    .line 342
    :goto_3
    move v8, v3

    :cond_4
    if-eqz v12, :cond_7

    .line 343
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 344
    iget v13, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v13, v8, v13

    .line 345
    iget v14, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int v14, v8, v14

    .line 346
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/ItemInfo;

    .line 347
    iget v5, v15, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ne v5, v13, :cond_5

    iget v5, v15, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ne v5, v14, :cond_5

    iget v5, v15, Lcom/android/launcher3/ItemInfo;->rank:I

    if-eq v5, v9, :cond_6

    .line 348
    :cond_5
    iput v13, v15, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 349
    iput v14, v15, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 350
    iput v9, v15, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 351
    if-eqz p3, :cond_6

    .line 352
    iget-object v13, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v13, v13, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v13, v13, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-object v14, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v14, v14, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    move-object/from16 v24, v4

    iget-wide v3, v14, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v20, 0x0

    iget v14, v15, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v1, v15, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-wide/from16 v18, v3

    move/from16 v22, v14

    move/from16 v23, v1

    invoke-virtual/range {v16 .. v23}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    goto :goto_4

    .line 356
    :cond_6
    move-object/from16 v24, v4

    :goto_4
    iget v1, v15, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v1, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 357
    iget v1, v15, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v1, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 358
    const/4 v1, -0x1

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 359
    iget-wide v3, v15, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v3, v3

    const/16 v18, 0x1

    .line 358
    move-object v13, v7

    move-object v14, v12

    move v15, v1

    move/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 361
    move-object/from16 v1, v24

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v9}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v3, v12, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_8

    .line 362
    check-cast v12, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v12}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    goto :goto_5

    .line 366
    :cond_7
    move-object v1, v4

    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 367
    add-int/lit8 v8, v8, 0x1

    .line 330
    add-int/lit8 v6, v6, 0x1

    move-object v4, v1

    move/from16 v1, p2

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 371
    :cond_9
    nop

    .line 372
    const/4 v1, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->removeView(Landroid/view/View;)V

    .line 374
    nop

    .line 372
    move v1, v10

    goto :goto_6

    .line 376
    :cond_a
    if-eqz v1, :cond_b

    .line 377
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    goto :goto_7

    .line 380
    :cond_b
    const/4 v3, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v1

    if-le v1, v10, :cond_c

    move v1, v10

    goto :goto_8

    :cond_c
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setEnableOverscroll(Z)V

    .line 383
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v2

    if-le v2, v10, :cond_d

    goto :goto_9

    :cond_d
    const/16 v3, 0x8

    :goto_9
    invoke-virtual {v1, v3}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setVisibility(I)V

    .line 385
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v2

    if-le v2, v10, :cond_f

    .line 386
    iget-boolean v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v0, :cond_e

    const/4 v10, 0x5

    goto :goto_a

    :cond_e
    const/4 v10, 0x3

    nop

    .line 385
    :cond_f
    :goto_a
    invoke-virtual {v1, v10}, Lcom/android/launcher3/ExtendedEditText;->setGravity(I)V

    .line 387
    return-void
.end method

.method public final clearScrollHint()V
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 509
    :cond_0
    return-void
.end method

.method public final completePendingPageChanges()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 517
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 519
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 520
    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public final createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;
    .locals 1

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderPagedView;->allocateSpaceForRank(I)V

    .line 212
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    .line 213
    return-object v0
.end method

.method public final createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f04001a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 239
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setHapticFeedbackEnabled(Z)V

    .line 241
    sget-object v1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 246
    new-instance v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v4, p1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method protected getChildGap()I
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getCurrentCellLayout()Lcom/android/launcher3/CellLayout;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getDesiredWidth()I
    .locals 3

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 391
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 390
    :cond_0
    return v1
.end method

.method public final getItemCount()I
    .locals 3

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 401
    if-gez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final getLastItem()Landroid/view/View;
    .locals 4

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 437
    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 440
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 441
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    if-lez v2, :cond_1

    .line 442
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v2, v1, v2

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 444
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public final getPageAt(I)Lcom/android/launcher3/CellLayout;
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    return-object p1
.end method

.method public final iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 7

    .line 453
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 454
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 455
    move v3, v0

    :goto_1
    iget v4, v2, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_2

    .line 456
    move v4, v0

    :goto_2
    iget v5, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v4, v5, :cond_1

    .line 457
    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 458
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ItemInfo;

    invoke-interface {p1, v6, v5}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    return-object v5

    .line 456
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 455
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 453
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0

    .line 483
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 484
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 487
    :cond_0
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 1

    .line 531
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 535
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 294
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget p3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxScrollX:I

    iget p4, p2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v0, 0x1

    if-le p4, v0, :cond_3

    iget-boolean p4, p2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz p4, :cond_0

    sub-int p1, p3, p1

    :cond_0
    iget p4, p2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    sub-int/2addr p4, v0

    div-int/2addr p3, p4

    div-int p4, p1, p3

    mul-int v1, p4, p3

    add-int v2, v1, p3

    const v3, 0x3dcccccd    # 0.1f

    int-to-float p3, p3

    mul-float/2addr v3, p3

    int-to-float p1, p1

    int-to-float p3, v1

    add-float/2addr p3, v3

    cmpg-float p3, p1, p3

    if-gez p3, :cond_1

    :goto_0
    int-to-float p1, p4

    invoke-virtual {p2, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    return-void

    :cond_1
    int-to-float p3, v2

    sub-float/2addr p3, v3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    add-int/2addr p4, v0

    goto :goto_0

    :cond_2
    int-to-float p1, p4

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    .line 295
    :cond_3
    return-void
.end method

.method public final removeItem(Landroid/view/View;)V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 286
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public final setupContentDimensions(I)V
    .locals 7

    .line 163
    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    .line 164
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountX:I

    iget v4, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountY:I

    iget v5, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    sget-object v6, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderPagedView;->calculateGridSize(IIIIII[I)V

    .line 166
    sget-object p1, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    .line 167
    sget-object p1, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 170
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public final verifyVisibleHighResIcons(I)V
    .locals 4

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    .line 542
    if-eqz p1, :cond_1

    .line 543
    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 544
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 545
    invoke-virtual {p1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 546
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 549
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    .line 550
    if-eqz v3, :cond_0

    .line 551
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 544
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method
