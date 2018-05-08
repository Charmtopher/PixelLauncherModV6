.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/LauncherStateManager$StateHandler;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mDeferRemoveExtraEmptyScreen:Z

.field public mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field public mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field public mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field private mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

.field private mForceDrawAdjacentPages:Z

.field public mIsSwitchingState:Z

.field mLastOverlayScroll:F

.field mLastReorderX:I

.field mLastReorderY:I

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field public mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

.field mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mMaxDistanceForFolderCreation:F

.field private mOnOverlayHiddenCallback:Ljava/lang/Runnable;

.field public mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

.field mOverlayShown:Z

.field private mOverlayTranslation:F

.field mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field final mRestoredPages:Ljava/util/ArrayList;

.field mSavedStates:Landroid/util/SparseArray;

.field public final mScreenOrder:Ljava/util/ArrayList;

.field mScrollInteractionBegan:Z

.field mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field public mStartedSendingScrollEvents:Z

.field private final mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private final mTempTouchCoordinates:[F

.field public final mTempXY:[I

.field private mTransitionProgress:F

.field mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field final mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

.field private mXDown:F

.field private mYDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    new-instance p2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 144
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 147
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 157
    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 159
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 168
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 173
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 178
    new-array v2, p3, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 179
    new-array v2, p3, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 180
    new-array v2, p3, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    .line 184
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 186
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 188
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 190
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 199
    new-instance v3, Lcom/android/launcher3/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    .line 200
    new-instance v3, Lcom/android/launcher3/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 202
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 203
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 204
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 226
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 227
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 228
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    .line 241
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 244
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 272
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 273
    new-instance v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 274
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 276
    new-instance p1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    .line 278
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 279
    iput p2, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    sget-object p1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/launcher3/Workspace$5;

    invoke-direct {p2, p0}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 285
    new-instance p1, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;

    invoke-direct {p1, p0}, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p1}, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->attach()V

    .line 286
    new-instance p1, Lcom/android/launcher3/touch/WorkspaceTouchListener;

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/Workspace;)Z
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/folder/PreviewBackground;)Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/graphics/DragPreviewProvider;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/launcher3/Workspace;F)F
    .locals 0

    .line 108
    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic access$400$31a5b1c7(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition$503aab85()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method private addInScreen(Landroid/view/View;JJIIII)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    .line 872
    move/from16 v9, p9

    const-wide/16 v10, -0x64

    cmp-long v10, p2, v10

    if-nez v10, :cond_0

    .line 873
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    if-nez v10, :cond_0

    .line 874
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping child, screenId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 877
    return-void

    .line 880
    :cond_0
    const-wide/16 v10, -0xc9

    cmp-long v10, v3, v10

    if-eqz v10, :cond_a

    .line 886
    const-wide/16 v10, -0x65

    cmp-long v1, p2, v10

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_1

    .line 887
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 888
    new-instance v3, Lcom/android/launcher3/HotseatIconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher3/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 891
    instance-of v3, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_3

    .line 892
    move-object v3, v7

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 896
    :cond_1
    instance-of v1, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 897
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 899
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 900
    new-instance v3, Lcom/android/launcher3/IconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher3/IconKeyEventListener;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 903
    :cond_3
    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 905
    if-eqz v3, :cond_5

    instance-of v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v4, :cond_4

    goto :goto_1

    .line 908
    :cond_4
    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 909
    iput v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 910
    iput v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 911
    iput v8, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 912
    iput v9, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_2

    .line 906
    :cond_5
    :goto_1
    new-instance v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v8, v9}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 915
    :goto_2
    move-object v11, v3

    if-gez v8, :cond_6

    if-gez v9, :cond_6

    .line 916
    iput-boolean v10, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 920
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 921
    iget-wide v3, v3, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v4, v3

    .line 923
    instance-of v3, v7, Lcom/android/launcher3/folder/Folder;

    if-nez v3, :cond_7

    .line 924
    move v6, v2

    goto :goto_3

    .line 923
    :cond_7
    nop

    .line 924
    move v6, v10

    :goto_3
    const/4 v3, -0x1

    move-object v2, v7

    move-object v5, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 928
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add to item at ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to CellLayout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_8
    invoke-virtual {v7, v10}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 932
    sget-object v1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 933
    instance-of v1, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_9

    .line 934
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 936
    :cond_9
    return-void

    .line 882
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .line 2211
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2215
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .line 2203
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 2207
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2208
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 1

    .line 2219
    if-eqz p1, :cond_0

    .line 2220
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2222
    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2223
    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2224
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 11

    .line 1395
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_8

    .line 1396
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 1398
    nop

    .line 1399
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 1400
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v3

    .line 1401
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 1403
    sub-float v2, v4, v2

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    .line 1404
    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1407
    :cond_0
    nop

    .line 1408
    nop

    .line 1409
    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_3

    .line 1410
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1412
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 1413
    cmpg-float v10, v9, v1

    if-gtz v10, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    cmpl-float v8, v9, v2

    if-ltz v8, :cond_2

    .line 1414
    if-ne v7, v4, :cond_1

    .line 1415
    nop

    .line 1417
    move v7, v5

    .line 1409
    :cond_1
    move v6, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1420
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1422
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1, v3, v6}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v7

    .line 1423
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v2

    .line 1424
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 1423
    invoke-static {v1, v7, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v6

    .line 1427
    :cond_4
    if-ne v7, v6, :cond_6

    .line 1429
    add-int/lit8 v1, v0, -0x1

    if-ge v6, v1, :cond_5

    .line 1430
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1431
    :cond_5
    if-lez v7, :cond_6

    .line 1432
    add-int/lit8 v7, v7, -0x1

    .line 1436
    :cond_6
    :goto_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_8

    .line 1437
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 1439
    if-gt v7, v1, :cond_7

    if-gt v1, v6, :cond_7

    .line 1440
    move v5, v2

    goto :goto_3

    .line 1439
    :cond_7
    nop

    .line 1440
    move v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1443
    :cond_8
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
    .locals 7

    .line 679
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 680
    const-string v2, "backgroundAlpha"

    new-array v5, v1, [F

    aput v3, v5, v4

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 682
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v5, -0xc9

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 684
    new-instance v5, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v5, p0, v3, p4}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Z)V

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 700
    const/4 p4, 0x2

    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p4, v4

    aput-object v2, p4, v1

    invoke-static {v3, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 701
    int-to-long v0, p2

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 702
    int-to-long p1, p1

    invoke-virtual {p4, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 703
    new-instance p1, Lcom/android/launcher3/Workspace$3;

    invoke-direct {p1, p0, p3}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->start()V

    .line 715
    return-void
.end method

.method static synthetic lambda$runOnOverlayHidden$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1227
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1228
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1229
    return-void
.end method

.method private onEndStateTransition()V
    .locals 5

    .line 1475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1476
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1477
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1479
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1480
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->workspaceAccessibilityFlag:I

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    iget-object v4, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 1481
    :cond_1
    return-void
.end method

.method private onStartStateTransition$503aab85()V
    .locals 1

    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1469
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1471
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1472
    return-void
.end method

.method private setDropLayoutForDragObject$c13fd63(Lcom/android/launcher3/DropTarget$DragObject;F)Z
    .locals 6

    .line 2361
    nop

    .line 2363
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 2364
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aput v0, v4, v1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 2365
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    goto :goto_3

    .line 2369
    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 2370
    const/4 v4, -0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2372
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v0, v1

    .line 2373
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v5, v5

    aput v5, v0, v2

    .line 2374
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    add-int/2addr v0, v3

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/Workspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2377
    :cond_5
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2379
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, v0, v1

    .line 2380
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float p1, p1

    aput p1, p2, v2

    .line 2381
    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    add-int/2addr v4, v3

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/Workspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2385
    :cond_7
    if-nez v0, :cond_8

    if-ltz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result p1

    if-ge v3, p1, :cond_8

    .line 2386
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2388
    :cond_8
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_9

    .line 2389
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2390
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2391
    return v2

    .line 2393
    :cond_9
    return v1
.end method

.method private showOutOfSpaceMessage(Z)V
    .locals 2

    .line 2061
    if-eqz p1, :cond_0

    const p1, 0x7f0c0038

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0037

    .line 2062
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2063
    return-void
.end method

.method private transitionStateShouldAllowDrop()Z
    .locals 2

    .line 1626
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1627
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1626
    return v0
.end method

.method private tryRunOverlayCallback()Z
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1202
    return v1

    .line 1204
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    .line 1210
    return v1

    .line 1205
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updatePageAlphaValues()V
    .locals 6

    .line 1314
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3

    .line 1315
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1316
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1317
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 1318
    if-eqz v3, :cond_2

    .line 1319
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1320
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    .line 1321
    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v4, :cond_0

    .line 1322
    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_2

    .line 1325
    :cond_0
    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1326
    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    .line 1325
    move v4, v1

    goto :goto_1

    .line 1327
    :cond_1
    const/4 v4, 0x4

    .line 1325
    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 1316
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1332
    :cond_3
    return-void
.end method

.method private verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;
    .locals 3

    .line 2400
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2401
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    .line 2402
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2403
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v0, p2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    aget v1, p2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget p2, p2, v0

    .line 2404
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    .line 2406
    return-object p1

    .line 2409
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private workspaceInModalState()Z
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 21

    move-object/from16 v7, p0

    .line 1636
    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1637
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/16 v19, 0x1

    if-eq v0, v7, :cond_8

    .line 1639
    const/16 v20, 0x0

    if-nez v15, :cond_0

    .line 1640
    return v20

    .line 1642
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    return v20

    .line 1644
    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1647
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1648
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    goto :goto_0

    .line 1650
    :cond_2
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 1655
    :goto_0
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 1656
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 1657
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 1658
    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 1659
    nop

    .line 1664
    move v14, v0

    move v13, v1

    goto :goto_1

    .line 1660
    :cond_3
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1661
    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1664
    move v13, v0

    move v14, v1

    .line 1665
    :goto_1
    nop

    .line 1666
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_4

    .line 1667
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 1668
    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 1671
    move v11, v0

    move v12, v1

    goto :goto_2

    :cond_4
    move v11, v13

    move v12, v14

    :goto_2
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v20

    float-to-int v1, v0

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v19

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v7

    move v3, v11

    move v4, v12

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1674
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v20

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v19

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 1676
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_5

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1678
    return v19

    .line 1681
    :cond_5
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1683
    return v19

    .line 1686
    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1687
    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v20

    float-to-int v9, v1

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v19

    float-to-int v10, v1

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v18, 0x4

    move-object v8, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1690
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v20

    if-ltz v0, :cond_7

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v19

    if-ltz v0, :cond_7

    .line 1693
    move/from16 v0, v19

    goto :goto_3

    .line 1690
    :cond_7
    nop

    .line 1693
    move/from16 v0, v20

    :goto_3
    if-nez v0, :cond_9

    .line 1694
    invoke-virtual {v7, v3}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 1695
    return v20

    .line 1699
    :cond_8
    move-object v3, v15

    :cond_9
    invoke-virtual {v7, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    .line 1700
    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1701
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    .line 1704
    :cond_a
    return v19
.end method

.method public final addExtraEmptyScreen()Z
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v1, -0xc9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)V

    .line 600
    const/4 v0, 0x1

    return v0

    .line 602
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 10

    .line 855
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 857
    return-void
.end method

.method public final addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 13

    .line 840
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 841
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 842
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 843
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v0

    .line 844
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-boolean v1, v1, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 845
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-boolean v4, v3, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v4, :cond_1

    iget-object v2, v3, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v2, v0

    nop

    .line 847
    :cond_1
    move v9, v1

    move v10, v2

    goto :goto_1

    :cond_2
    move v9, v0

    move v10, v1

    :goto_1
    iget-wide v5, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v7, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v11, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v12, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 848
    return-void
.end method

.method final addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 2

    .line 1823
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p3, p3, v0

    const/4 v0, 0x0

    if-lez p3, :cond_0

    return v0

    .line 1825
    :cond_0
    aget p3, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    .line 1826
    iget-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_1

    return v0

    .line 1827
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 1829
    instance-of p2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_3

    .line 1830
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    .line 1831
    iget-object p2, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1832
    invoke-virtual {p1, p4, v0}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 1835
    if-nez p5, :cond_2

    .line 1836
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1838
    :cond_2
    return v1

    .line 1841
    :cond_3
    return v0
.end method

.method public final animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 23

    move-object/from16 v14, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 2786
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 2787
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v7, v11}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2789
    const/4 v12, 0x2

    new-array v13, v12, [I

    .line 2790
    new-array v15, v12, [F

    .line 2791
    instance-of v0, v6, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2792
    move/from16 v16, v5

    goto :goto_0

    .line 2791
    :cond_0
    nop

    .line 2792
    move/from16 v16, v4

    :goto_0
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v3, v6, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, v6, Lcom/android/launcher3/ItemInfo;->spanY:I

    aget v17, v0, v4

    aget v18, v0, v5

    move-object v0, v14

    move-object/from16 v1, p2

    move/from16 v19, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, v18

    move v12, v4

    move/from16 v4, v17

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v1}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    aput v1, v13, v12

    iget v1, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aput v1, v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v13, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v16, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v5, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    aget v3, v13, v12

    move-object/from16 v20, v13

    int-to-double v12, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v21, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    sub-float/2addr v3, v11

    div-float v3, v3, v17

    float-to-double v9, v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    sub-double/2addr v9, v3

    sub-double/2addr v12, v9

    double-to-int v3, v12

    const/4 v4, 0x0

    aput v3, v20, v4

    const/4 v3, 0x1

    aget v4, v20, v3

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v9, v0

    div-float v9, v9, v17

    sub-float/2addr v4, v9

    float-to-int v0, v4

    aput v0, v20, v3

    mul-float/2addr v2, v1

    const/4 v0, 0x0

    aput v2, v15, v0

    mul-float/2addr v5, v1

    aput v5, v15, v3

    goto :goto_1

    :cond_2
    move-object/from16 v21, v11

    move v0, v12

    move-object/from16 v20, v13

    iget v2, v7, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    mul-float/2addr v2, v1

    aget v3, v20, v0

    int-to-float v3, v3

    sub-float v4, v2, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float v5, v5, v17

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v20, v0

    const/4 v3, 0x1

    aget v5, v20, v3

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    div-float v4, v4, v17

    add-float/2addr v5, v4

    float-to-int v4, v5

    aput v4, v20, v3

    aput v2, v15, v3

    aput v2, v15, v0

    iget-object v2, v7, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    aget v3, v20, v0

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v20, v0

    const/4 v0, 0x1

    aget v3, v20, v0

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    aput v1, v20, v0

    .line 2795
    :cond_3
    :goto_1
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2796
    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v13, v0, -0xc8

    .line 2798
    iget v0, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget v0, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 2800
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 2798
    :cond_5
    :goto_2
    nop

    .line 2800
    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x2

    if-eq v8, v1, :cond_8

    if-eqz p7, :cond_6

    goto :goto_4

    .line 2804
    :cond_6
    move-object/from16 v2, p6

    :cond_7
    const/4 v3, 0x2

    goto :goto_5

    .line 2800
    :cond_8
    :goto_4
    move-object/from16 v2, p6

    if-eqz v2, :cond_7

    .line 2801
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;)[I

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    aget v4, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x1

    aget v9, v0, v6

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    aget v9, v0, v3

    aget v10, v0, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    aget v4, v0, v3

    aget v0, v0, v6

    invoke-virtual {v2, v3, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2802
    iput-object v9, v7, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    .line 2803
    int-to-float v0, v13

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v3, 0x2

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$4;

    invoke-direct {v0, v7}, Lcom/android/launcher3/dragndrop/DragView$4;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2804
    goto :goto_6

    :goto_5
    if-eqz v0, :cond_9

    if-eqz p7, :cond_9

    .line 2805
    const/4 v0, 0x0

    aget v1, v15, v0

    const/4 v4, 0x1

    aget v5, v15, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v4

    aput v1, v15, v0

    .line 2808
    :cond_9
    :goto_6
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 2809
    const/4 v1, 0x4

    if-ne v8, v1, :cond_a

    .line 2810
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, v20

    move-object/from16 v7, p4

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    return-void

    .line 2814
    :cond_a
    const/4 v1, 0x1

    if-ne v8, v1, :cond_b

    .line 2815
    nop

    .line 2820
    move v12, v3

    goto :goto_7

    .line 2817
    :cond_b
    nop

    .line 2820
    const/4 v12, 0x0

    :goto_7
    new-instance v11, Lcom/android/launcher3/Workspace$9;

    move-object/from16 v1, p4

    invoke-direct {v11, v14, v2, v1}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2831
    move-object/from16 v1, v21

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    aget v4, v20, v1

    const/4 v5, 0x1

    aget v6, v20, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    aget v16, v15, v1

    aget v15, v15, v5

    move-object v1, v7

    move v5, v6

    move v6, v8

    move v7, v9

    move v8, v10

    move/from16 v9, v16

    move v10, v15

    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 2835
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1305
    :cond_0
    return-void
.end method

.method public final beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    .line 1569
    move-object/from16 v10, p5

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1570
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1571
    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 1574
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1575
    iget v5, v2, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v5, v5, 0x2

    .line 1577
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v4, v6}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/Bitmap;[I)F

    move-result v8

    .line 1578
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v6, v6, v3

    .line 1579
    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v9, 0x1

    aget v7, v7, v9

    .line 1581
    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 1582
    nop

    .line 1583
    nop

    .line 1584
    instance-of v11, v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    .line 1585
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1586
    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 1587
    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    .line 1590
    new-instance v9, Landroid/graphics/Point;

    neg-int v12, v5

    invoke-direct {v9, v12, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1600
    move-object v12, v2

    goto :goto_0

    .line 1591
    :cond_0
    instance-of v13, v1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v13, :cond_1

    .line 1592
    iget v2, v9, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 1593
    new-instance v9, Landroid/graphics/Point;

    neg-int v12, v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-direct {v9, v12, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1594
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-direct {v5, v3, v12, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1595
    nop

    .line 1600
    move-object v12, v5

    goto :goto_0

    .line 1595
    :cond_1
    instance-of v2, v2, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    if-eqz v2, :cond_2

    .line 1596
    new-instance v2, Landroid/graphics/Point;

    neg-int v9, v5

    invoke-direct {v2, v9, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1600
    move-object v9, v2

    goto :goto_0

    :cond_2
    move-object v9, v12

    :goto_0
    if-eqz v11, :cond_3

    .line 1601
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 1602
    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1605
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_4

    .line 1606
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1609
    :cond_4
    if-eqz v11, :cond_5

    iget-boolean v2, v10, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v2, :cond_5

    .line 1610
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 1611
    invoke-static {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    .line 1612
    if-eqz v1, :cond_5

    .line 1613
    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v2, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 1615
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    const-string v2, "dragging started"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    .line 1619
    :cond_5
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v1, v4

    move v2, v6

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    move-object v7, v12

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    .line 1621
    iget v1, v10, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    .line 1622
    return-object v0
.end method

.method public final beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 8

    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1557
    instance-of v1, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_0

    .line 1563
    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    new-instance v6, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v6, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 1565
    return-void

    .line 1558
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "  tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1561
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V
    .locals 9

    .line 492
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 494
    if-nez p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f040030

    .line 498
    invoke-virtual {p1, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 501
    :cond_0
    move-object v4, p1

    new-instance v7, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget p1, v3, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v1, 0x1

    invoke-direct {v7, v0, v0, p1, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 502
    iput-boolean v0, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 503
    const/4 v5, 0x0

    const v6, 0x7f0e0013

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 504
    const-string p1, "Launcher.Workspace"

    const-string v0, "Failed to add to item at (0, 0) to CellLayout"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 2

    .line 3363
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final commitExtraEmptyScreen()J
    .locals 4

    .line 722
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 724
    const-wide/16 v0, -0x1

    return-wide v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v1, -0xc9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 728
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 729
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "generate_new_screen_id"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    .line 733
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 734
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 740
    return-wide v1
.end method

.method public computeScroll()V
    .locals 1

    .line 1284
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1285
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1286
    return-void
.end method

.method public final computeScrollWithoutInvalidation()V
    .locals 1

    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->computeScrollHelper(Z)Z

    .line 1290
    return-void
.end method

.method final createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 1766
    iget v3, v0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v3, p6, v3

    const/4 v9, 0x0

    if-lez v3, :cond_0

    return v9

    .line 1767
    :cond_0
    aget v3, p5, v9

    const/4 v10, 0x1

    aget v4, p5, v10

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    .line 1769
    nop

    .line 1770
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v3, :cond_2

    .line 1771
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 1772
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    aget v5, p5, v9

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    aget v5, p5, v10

    if-ne v4, v5, :cond_1

    if-ne v3, v2, :cond_1

    .line 1776
    move v3, v10

    goto :goto_0

    .line 1772
    :cond_1
    nop

    .line 1776
    :cond_2
    move v3, v9

    :goto_0
    if-eqz v11, :cond_8

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 1777
    :cond_3
    iput-boolean v9, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 1778
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v5

    .line 1780
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ShortcutInfo;

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/ShortcutInfo;

    .line 1783
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 1784
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/launcher3/ShortcutInfo;

    .line 1785
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/launcher3/ShortcutInfo;

    .line 1787
    if-nez p7, :cond_4

    .line 1788
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1791
    :cond_4
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1792
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3, v11, v15}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v16

    .line 1793
    invoke-virtual {v2, v11}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1795
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v7, p5, v9

    aget v8, p5, v10

    .line 1796
    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1797
    const/4 v2, -0x1

    iput v2, v12, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 1798
    iput v2, v12, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1799
    iput v2, v13, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 1800
    iput v2, v13, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1803
    if-eqz p8, :cond_5

    .line 1804
    move v3, v10

    goto :goto_1

    .line 1803
    :cond_5
    nop

    .line 1804
    move v3, v9

    :goto_1
    if-eqz v3, :cond_6

    .line 1807
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v3, v1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v3, v1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v1, v3, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 1808
    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v3}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 1809
    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v12, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    iget-object v0, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v12, v1

    move-object/from16 v14, p8

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FIZ)V

    goto :goto_2

    .line 1812
    :cond_6
    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 1813
    invoke-virtual {v1, v12, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 1814
    invoke-virtual {v1, v13, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 1816
    :goto_2
    return v10

    .line 1818
    :cond_7
    return v9

    .line 1776
    :cond_8
    :goto_3
    return v9
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 4

    .line 995
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    .line 998
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 999
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1001
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1003
    :cond_1
    div-float v2, v1, v0

    .line 1004
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1006
    iget v3, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1010
    :cond_3
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 1012
    return-void

    .line 1013
    :cond_4
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_5

    .line 1018
    sub-float/2addr v2, v0

    .line 1019
    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 1020
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1021
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-super {p0, p1, v1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1022
    return-void

    .line 1024
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1026
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1

    .line 1294
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 1295
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1297
    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 2951
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 2952
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 967
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 969
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7

    .line 358
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 359
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 360
    return-object v6
.end method

.method public final estimateItemSize(Lcom/android/launcher3/ItemInfo;)[I
    .locals 10

    .line 324
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    .line 327
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 328
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 330
    move v1, v2

    goto :goto_0

    .line 328
    :cond_0
    nop

    .line 330
    move v1, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 332
    const/4 v4, 0x0

    .line 333
    if-eqz v1, :cond_1

    .line 334
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 335
    iget-object v5, v4, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v5, v4}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v4

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    aput v5, v0, v3

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aput p1, v0, v2

    .line 340
    if-eqz v1, :cond_2

    .line 341
    aget p1, v0, v3

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    aput p1, v0, v3

    .line 342
    aget p1, v0, v2

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    aput p1, v0, v2

    .line 344
    :cond_2
    return-object v0

    .line 346
    :cond_3
    const p1, 0x7fffffff

    aput p1, v0, v3

    .line 347
    aput p1, v0, v2

    .line 348
    return-object v0
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    .line 3390
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 3391
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 3392
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result p1

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 3393
    const/4 p1, 0x1

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 3394
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3395
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 3396
    const/4 p1, 0x2

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void

    .line 3397
    :cond_0
    iget-wide p1, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    .line 3398
    const/4 p1, 0x3

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 3400
    :cond_1
    return-void
.end method

.method final findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6

    .line 2868
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 7

    .line 3368
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 3369
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v3, -0xc9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    if-le v1, v3, :cond_2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c004e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 1363
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    const/high16 v0, 0x60000

    return v0

    .line 1366
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 3349
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3350
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    .line 3349
    return v0

    .line 3350
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    return v0
.end method

.method public getExpectedWidth()I
    .locals 1

    .line 3355
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3356
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    .line 3355
    return v0

    .line 3356
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    return v0
.end method

.method public final getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 2

    .line 3074
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 3075
    new-instance v1, Lcom/android/launcher3/Workspace$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$14;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3085
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2536
    return-void
.end method

.method public final getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1

    .line 3043
    new-instance v0, Lcom/android/launcher3/Workspace$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace$11;-><init>(Lcom/android/launcher3/Workspace;J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getIdForScreen(Lcom/android/launcher3/CellLayout;)J
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    .line 749
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v0

    return-wide v0

    .line 752
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPageIndexForScreenId(J)I
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method final getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 3

    .line 3001
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3002
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 3003
    iget-object v2, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 3004
    return-object v1

    .line 3006
    :cond_0
    goto :goto_0

    .line 3007
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getScreenIdForPageIndex(I)J
    .locals 2

    .line 760
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 763
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getScreenWithId(J)Lcom/android/launcher3/CellLayout;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    return-object p1
.end method

.method final getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4

    .line 3014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3015
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 3016
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3017
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3016
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3019
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_1

    .line 3020
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3022
    :cond_1
    return-object v0
.end method

.method public final hasExtraEmptyScreen()Z
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v1, -0xc9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;
    .locals 9

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 554
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 555
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    .line 556
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 558
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 559
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 560
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 561
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 562
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v4, p1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 561
    iget-object p1, v3, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    move-object v5, v0

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 564
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    const/4 p1, 0x1

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 568
    :cond_0
    return-object v0

    .line 547
    :cond_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final insertNewWorkspaceScreen(J)V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    .line 543
    return-void
.end method

.method public final isDropEnabled()Z
    .locals 1

    .line 2943
    const/4 v0, 0x1

    return v0
.end method

.method public final isFinishedSwitchingState()Z
    .locals 2

    .line 961
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final isTouchActive()Z
    .locals 1

    .line 480
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V
    .locals 12

    .line 3166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3167
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3168
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    .line 3169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 3171
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    .line 3172
    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_6

    .line 3173
    invoke-virtual {v4, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3174
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 3175
    if-eqz p1, :cond_4

    instance-of v9, v8, Lcom/android/launcher3/FolderInfo;

    if-eqz v9, :cond_4

    instance-of v9, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v9, :cond_4

    .line 3176
    check-cast v7, Lcom/android/launcher3/folder/FolderIcon;

    .line 3177
    iget-object v7, v7, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 3179
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3180
    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_3

    .line 3181
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 3182
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/ItemInfo;

    .line 3183
    invoke-interface {p2, v11, v10}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3184
    return-void

    .line 3180
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3187
    :cond_3
    goto :goto_4

    .line 3188
    :cond_4
    invoke-interface {p2, v8, v7}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3189
    return-void

    .line 3172
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3168
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3194
    :cond_7
    return-void
.end method

.method final mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 3

    .line 2232
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2233
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    aput v1, p2, v0

    .line 2234
    return-void
.end method

.method final mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V
    .locals 4

    .line 2248
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v1, 0x0

    aget v2, p2, v1

    float-to-int v2, v2

    aput v2, v0, v1

    .line 2249
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v2, 0x1

    aget v3, p2, v2

    float-to-int v3, v3

    aput v3, v0, v2

    .line 2250
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 2251
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p1, p1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 2253
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget p1, p1, v1

    int-to-float p1, p1

    aput p1, p2, v1

    .line 2254
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget p1, p1, v2

    int-to-float p1, p1

    aput p1, p2, v2

    .line 2255
    return-void
.end method

.method moveToDefaultScreen()V
    .locals 2

    .line 3337
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 3341
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3342
    if-eqz v0, :cond_1

    .line 3343
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3345
    :cond_1
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 4

    .line 1250
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 1251
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    .line 1252
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    const/4 v1, 0x3

    if-ge p1, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1253
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1256
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1335
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 1336
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1337
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 1339
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iput-object v0, v1, Lcom/android/launcher3/dragndrop/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 1340
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1343
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 1344
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1345
    return-void
.end method

.method public final onDragEnd()V
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 434
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 435
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 436
    return-void
.end method

.method public final onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 2093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2094
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2096
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2097
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2098
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v1, v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject$c13fd63(Lcom/android/launcher3/DropTarget$DragObject;F)Z

    .line 2099
    return-void
.end method

.method public final onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 2109
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2110
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2111
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_0

    .line 2112
    :cond_0
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2113
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2117
    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2118
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2120
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2121
    return-void
.end method

.method public final onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 25

    move-object/from16 v9, p0

    .line 2264
    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2266
    :cond_0
    iget-object v7, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 2267
    if-nez v7, :cond_1

    .line 2271
    return-void

    .line 2275
    :cond_1
    iget v0, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ltz v0, :cond_17

    iget v0, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-ltz v0, :cond_17

    .line 2276
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2278
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2279
    :goto_0
    move-object/from16 v21, v0

    goto :goto_1

    .line 2278
    :cond_2
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_0

    .line 2279
    :goto_1
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v15, 0x0

    aget v0, v0, v15

    invoke-direct {v9, v8, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject$c13fd63(Lcom/android/launcher3/DropTarget$DragObject;F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2280
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2281
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v15, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    goto :goto_3

    .line 2283
    :cond_3
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v15, v2, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    if-nez v1, :cond_4

    const-wide/16 v3, 0x3b6

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x1f4

    :goto_2
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    .line 2288
    :cond_5
    :goto_3
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_16

    .line 2290
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2291
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    goto :goto_4

    .line 2293
    :cond_6
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2296
    :goto_4
    iget v0, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2297
    iget v1, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2298
    iget v2, v7, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_7

    iget v2, v7, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_7

    .line 2299
    iget v0, v7, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2300
    iget v1, v7, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 2303
    :cond_7
    move/from16 v22, v0

    move/from16 v23, v1

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v15

    float-to-int v1, v0

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v14, 0x1

    aget v0, v0, v14

    float-to-int v2, v0

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v9

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2306
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v15

    .line 2307
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v14

    .line 2309
    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v15

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v14

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2311
    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v15

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v4, v14

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v2

    .line 2314
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v5, v9, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, v2, v5

    const/4 v6, 0x2

    if-gtz v2, :cond_10

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v5, v15

    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v10, v10, v14

    invoke-virtual {v2, v5, v10}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    iget-object v5, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v9, v5, v2, v15}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z

    move-result v10

    iget v11, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v11, :cond_9

    if-eqz v10, :cond_9

    iget-object v11, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    iget-boolean v11, v11, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-nez v11, :cond_9

    new-instance v5, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;

    aget v10, v4, v15

    aget v4, v4, v14

    invoke-direct {v5, v9, v3, v10, v4}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V

    iget-boolean v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v3, :cond_8

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    iput-object v5, v3, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_5

    :cond_8
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    :goto_5
    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_10

    :goto_6
    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v9, v5, v2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget v11, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v11, :cond_e

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v4, v9, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v10, v4, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v10, v10, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    if-nez v10, :cond_c

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/CellLayout;

    iget-object v12, v4, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v13, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v10, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v12, v11, v13, v10}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    iget-object v10, v4, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v11, v4, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    iput-object v11, v10, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    instance-of v10, v5, Lcom/android/launcher3/AppInfo;

    if-nez v10, :cond_b

    instance-of v10, v5, Lcom/android/launcher3/ShortcutInfo;

    if-nez v10, :cond_b

    instance-of v5, v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v5, :cond_c

    :cond_b
    iget-object v4, v4, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v10, 0x320

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_c
    :goto_7
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_d
    invoke-virtual {v9, v6}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_e
    iget v2, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v2, v6, :cond_f

    if-nez v4, :cond_f

    invoke-virtual {v9, v15}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_f
    iget v2, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v2, v14, :cond_10

    if-nez v10, :cond_10

    invoke-virtual {v9, v15}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2316
    :cond_10
    :goto_8
    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v15

    float-to-int v11, v2

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v14

    float-to-int v12, v2

    iget v13, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v5, v14

    move v14, v2

    move v2, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v24

    .line 2320
    if-nez v24, :cond_12

    .line 2321
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v2

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v10, v1, v5

    iget v11, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    const/4 v12, 0x0

    move-object/from16 v1, v21

    move-object v2, v3

    move v3, v4

    move v4, v10

    move v15, v5

    move v5, v11

    move v14, v6

    move v6, v7

    move v7, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;IIIIZLcom/android/launcher3/DropTarget$DragObject;)V

    .line 2340
    :cond_11
    move v11, v14

    move v12, v15

    goto/16 :goto_9

    .line 2323
    :cond_12
    move v15, v5

    move v14, v6

    iget v3, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v3, :cond_13

    iget v3, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    :cond_13
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 2324
    iget-boolean v3, v3, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-nez v3, :cond_11

    iget v3, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v3, v0, :cond_14

    iget v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v0, v1, :cond_11

    .line 2327
    :cond_14
    new-array v0, v14, [I

    .line 2328
    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v2

    float-to-int v11, v1

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v15

    float-to-int v12, v1

    iget v1, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x0

    move/from16 v13, v22

    move v6, v14

    move/from16 v14, v23

    move v5, v15

    move v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v21

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 2334
    new-instance v10, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v11, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, v10

    move-object v1, v9

    move/from16 v3, v22

    move/from16 v4, v23

    move v12, v5

    move v5, v11

    move v11, v6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    .line 2336
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iput-object v10, v0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 2337
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 2340
    :goto_9
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v12, :cond_15

    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v11, :cond_15

    if-nez v24, :cond_16

    .line 2342
    :cond_15
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_16

    .line 2343
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2347
    :cond_16
    return-void

    .line 2275
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 371
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 379
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    new-instance v2, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, v1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 390
    iget-boolean p2, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne p2, p0, :cond_2

    goto :goto_0

    .line 392
    :cond_2
    move p2, v0

    goto :goto_1

    .line 390
    :cond_3
    :goto_0
    nop

    .line 392
    move p2, v1

    :goto_1
    if-eqz p2, :cond_a

    .line 393
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 394
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p2

    if-ne p2, v1, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_3

    :cond_5
    move p2, v0

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    if-nez v0, :cond_8

    :cond_7
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v0, -0xc9

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)V

    .line 396
    :cond_8
    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget p2, p2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq p2, p0, :cond_a

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result p2

    .line 404
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge p2, v0, :cond_a

    .line 405
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 406
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 407
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 408
    goto :goto_5

    .line 404
    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 415
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 416
    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 52

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1848
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v11, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1849
    iget-object v9, v10, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1852
    if-eqz v9, :cond_1

    .line 1853
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    goto :goto_0

    .line 1856
    :cond_0
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v9, v0}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 1860
    :cond_1
    :goto_0
    nop

    .line 1862
    nop

    .line 1863
    nop

    .line 1864
    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v14, 0x4

    const/16 v23, 0x0

    const-wide/16 v24, -0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne v0, v10, :cond_24

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_2

    goto/16 :goto_19

    .line 1869
    :cond_2
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v5, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1870
    nop

    .line 1871
    nop

    .line 1873
    const/16 v26, -0x1

    if-eqz v9, :cond_1c

    iget-boolean v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_1c

    .line 1875
    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eq v0, v9, :cond_3

    .line 1876
    move/from16 v27, v7

    goto :goto_1

    .line 1875
    :cond_3
    nop

    .line 1876
    move/from16 v27, v6

    :goto_1
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v28

    .line 1877
    if-eqz v28, :cond_4

    .line 1878
    nop

    .line 1880
    move-wide/from16 v31, v24

    goto :goto_2

    .line 1879
    :cond_4
    nop

    .line 1880
    const-wide/16 v31, -0x64

    :goto_2
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v6

    if-gez v0, :cond_5

    .line 1881
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 1882
    :goto_3
    move-wide v3, v0

    goto :goto_4

    .line 1881
    :cond_5
    invoke-virtual {v10, v9}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    goto :goto_3

    .line 1882
    :goto_4
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 1883
    move v2, v0

    goto :goto_5

    .line 1882
    :cond_6
    nop

    .line 1883
    move v2, v7

    :goto_5
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 1887
    move v1, v0

    goto :goto_6

    .line 1883
    :cond_7
    nop

    .line 1887
    move v1, v7

    :goto_6
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v6

    float-to-int v0, v0

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v6, v6, v7

    float-to-int v6, v6

    iget-object v8, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v16, v0

    move-object v0, v10

    move/from16 v41, v1

    move/from16 v1, v16

    move/from16 v42, v2

    move v2, v6

    move-wide/from16 v43, v3

    move/from16 v3, v42

    move/from16 v4, v41

    move-object v6, v5

    move-object v5, v9

    move-object/from16 v45, v6

    const/4 v7, 0x0

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1889
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v7

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v1, v1, v8

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 1894
    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v17, 0x0

    iget-object v6, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v10

    move-object/from16 v1, v45

    move-wide/from16 v2, v31

    move-object v4, v9

    move-object/from16 v18, v6

    move/from16 v6, v16

    move v15, v8

    move v8, v7

    move/from16 v7, v17

    move v15, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    .line 1896
    move-object v0, v10

    move-object v1, v9

    move/from16 v3, v16

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_11

    .line 1904
    :cond_8
    iget-object v8, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 1905
    iget v0, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1906
    iget v1, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1907
    iget v2, v8, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_9

    iget v2, v8, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_9

    .line 1908
    iget v0, v8, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 1909
    iget v1, v8, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 1912
    :cond_9
    move/from16 v16, v1

    iget-wide v1, v8, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-wide/from16 v6, v43

    cmp-long v1, v1, v6

    if-nez v1, :cond_a

    iget-wide v1, v8, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v1, v1, v31

    if-nez v1, :cond_a

    iget v1, v8, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v15

    if-ne v1, v2, :cond_a

    iget v1, v8, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ne v1, v2, :cond_a

    .line 1914
    const/16 v39, 0x1

    goto :goto_7

    .line 1912
    :cond_a
    nop

    .line 1914
    move/from16 v39, v15

    :goto_7
    if-eqz v39, :cond_b

    iget-boolean v1, v10, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v1, :cond_b

    .line 1918
    const/16 v40, 0x1

    goto :goto_8

    .line 1914
    :cond_b
    nop

    .line 1918
    move/from16 v40, v15

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v1

    if-nez v1, :cond_c

    if-nez v40, :cond_c

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 1920
    move/from16 v4, v41

    move/from16 v3, v42

    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1921
    const/4 v1, 0x1

    goto :goto_9

    .line 1920
    :cond_c
    move/from16 v4, v41

    move/from16 v3, v42

    .line 1921
    :cond_d
    move v1, v15

    :goto_9
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1922
    if-eqz v1, :cond_e

    .line 1923
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v17, 0x1

    aput v26, v3, v17

    aput v26, v0, v15

    .line 1930
    move v5, v14

    move v11, v15

    goto :goto_a

    .line 1925
    :cond_e
    const/16 v17, 0x1

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v5, v15

    float-to-int v5, v5

    iget-object v12, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v12, v12, v17

    float-to-int v13, v12

    iget-object v12, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v22, 0x2

    move-object/from16 v20, v12

    move-object v12, v9

    move/from16 v18, v13

    move v13, v5

    move v5, v14

    move/from16 v14, v18

    move v11, v15

    move v15, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v45

    move-object/from16 v21, v2

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1930
    :goto_a
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    if-ltz v0, :cond_f

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v15, 0x1

    aget v0, v0, v15

    if-ltz v0, :cond_10

    .line 1933
    move v0, v15

    goto :goto_b

    .line 1930
    :cond_f
    const/4 v15, 0x1

    .line 1933
    :cond_10
    move v0, v11

    :goto_b
    if-eqz v0, :cond_12

    move-object/from16 v12, v45

    instance-of v3, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_13

    aget v3, v2, v11

    iget v4, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v3, v4, :cond_11

    aget v3, v2, v15

    iget v4, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v3, v4, :cond_13

    .line 1935
    :cond_11
    nop

    .line 1936
    aget v3, v2, v11

    iput v3, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1937
    aget v3, v2, v15

    iput v3, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1938
    move-object v3, v12

    check-cast v3, Landroid/appwidget/AppWidgetHostView;

    .line 1939
    iget-object v4, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v13, v2, v11

    aget v2, v2, v15

    invoke-static {v3, v4, v13, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 1943
    move v13, v15

    goto :goto_c

    :cond_12
    move-object/from16 v12, v45

    :cond_13
    move v13, v11

    :goto_c
    if-eqz v0, :cond_19

    .line 1944
    iget v0, v10, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {v10, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    if-nez v28, :cond_14

    .line 1945
    invoke-virtual {v10, v6, v7}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 1946
    invoke-virtual {v10, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 1949
    move v14, v0

    goto :goto_d

    :cond_14
    move/from16 v14, v26

    :goto_d
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 1950
    if-eqz v27, :cond_16

    .line 1952
    invoke-virtual {v10, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1953
    if-eqz v0, :cond_15

    .line 1954
    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1958
    :cond_15
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v16, v0, v11

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v17, v0, v15

    iget v2, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, v10

    move-object v1, v12

    move/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v2, v31

    move-object/from16 v20, v4

    move-wide v4, v6

    move-wide/from16 v21, v6

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v46, v8

    move/from16 v8, v18

    move-object/from16 v47, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_e

    .line 1963
    :cond_16
    move-object/from16 v20, v4

    move-wide/from16 v21, v6

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    :goto_e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1964
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1965
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 1966
    move-object/from16 v1, v46

    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1967
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 1968
    iput-boolean v15, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1970
    cmp-long v2, v31, v24

    if-eqz v2, :cond_17

    instance-of v2, v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_17

    .line 1972
    nop

    .line 1976
    move-object v5, v12

    check-cast v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1977
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1978
    if-eqz v2, :cond_17

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_17

    move v9, v11

    move-object/from16 v11, p1

    iget-boolean v2, v11, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v2, :cond_18

    .line 1980
    new-instance v2, Lcom/android/launcher3/Workspace$7;

    move-object/from16 v8, v47

    invoke-direct {v2, v10, v5, v8}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 1990
    move-object/from16 v23, v2

    goto :goto_f

    :cond_17
    move v9, v11

    move-object/from16 v11, p1

    :cond_18
    :goto_f
    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v29, v2

    move-object/from16 v30, v20

    move-wide/from16 v33, v21

    move/from16 v35, v3

    move/from16 v36, v0

    move/from16 v37, v4

    move/from16 v38, v1

    invoke-virtual/range {v29 .. v38}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V

    .line 1992
    nop

    .line 2006
    move v0, v13

    move v1, v14

    move-object/from16 v8, v23

    goto :goto_10

    .line 1993
    :cond_19
    move-object v8, v9

    move v9, v11

    move-object/from16 v11, p1

    if-nez v1, :cond_1a

    .line 1994
    invoke-virtual {v10, v8}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 1998
    :cond_1a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1999
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v2, v1, v9

    .line 2000
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v0, v1, v15

    .line 2001
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2002
    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2006
    move v0, v13

    move-object/from16 v8, v23

    move/from16 v1, v26

    :goto_10
    const-wide/16 v13, 0x1f4

    goto :goto_12

    .line 1898
    :cond_1b
    :goto_11
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;J)V

    .line 1899
    return-void

    .line 2006
    :cond_1c
    move-object v12, v5

    move v9, v6

    move v15, v7

    const-wide/16 v13, 0x1f4

    move v0, v9

    move/from16 v39, v0

    move/from16 v40, v39

    move-object/from16 v8, v23

    move/from16 v1, v26

    :goto_12
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 2007
    iget-object v2, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-boolean v2, v2, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    if-eqz v2, :cond_23

    .line 2008
    if-eqz v40, :cond_1d

    .line 2011
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    const/16 v1, 0x96

    invoke-virtual {v0, v8, v12, v1}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 2013
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 2014
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 2015
    invoke-virtual {v7, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2016
    return-void

    .line 2018
    :cond_1d
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 2019
    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1f

    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1e

    goto :goto_13

    .line 2021
    :cond_1e
    move v15, v9

    goto :goto_14

    .line 2019
    :cond_1f
    :goto_13
    nop

    .line 2021
    :goto_14
    if-eqz v15, :cond_21

    .line 2022
    if-eqz v0, :cond_20

    .line 2024
    const/4 v5, 0x2

    goto :goto_15

    .line 2023
    :cond_20
    nop

    .line 2024
    move v5, v9

    :goto_15
    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, v2

    move-object v2, v7

    move-object v6, v12

    move-object v15, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2025
    goto :goto_18

    .line 2026
    :cond_21
    move-object v15, v7

    if-gez v1, :cond_22

    .line 2027
    :goto_16
    move/from16 v0, v26

    goto :goto_17

    .line 2026
    :cond_22
    const/16 v26, 0x12c

    goto :goto_16

    .line 2027
    :goto_17
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2, v12, v0, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    .line 2030
    goto :goto_18

    .line 2031
    :cond_23
    move-object v15, v7

    iput-boolean v9, v11, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2032
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2034
    :goto_18
    invoke-virtual {v15, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2036
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, v13, v14, v8}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;JLjava/lang/Runnable;)V

    .line 2040
    move/from16 v12, v39

    goto/16 :goto_26

    .line 1865
    :cond_24
    :goto_19
    move v15, v7

    move-object v8, v9

    const/4 v5, 0x5

    move v9, v6

    move v6, v14

    const-wide/16 v13, 0x1f4

    const/4 v7, 0x2

    new-array v0, v7, [I

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v9

    float-to-int v3, v3

    aput v3, v0, v9

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v15

    float-to-int v3, v3

    aput v3, v0, v15

    .line 1867
    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v3, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v3, :cond_25

    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v3, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    iput-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    :cond_25
    iget-object v12, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v3, v12, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v12, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_26

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    move v3, v1

    move v4, v2

    :cond_26
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_27

    move-wide/from16 v48, v24

    goto :goto_1a

    :cond_27
    const-wide/16 v48, -0x64

    :goto_1a
    invoke-virtual {v10, v8}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v1

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_28

    iget v5, v10, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v16

    cmp-long v5, v1, v16

    if-eqz v5, :cond_28

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    :cond_28
    instance-of v5, v12, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v5, :cond_35

    move-object v14, v12

    check-cast v14, Lcom/android/launcher3/PendingAddItemInfo;

    iget v5, v14, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    if-ne v5, v15, :cond_2a

    aget v5, v0, v9

    aget v6, v0, v15

    iget-object v13, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v10

    move-wide/from16 v24, v1

    move v1, v5

    move v2, v6

    const/4 v6, 0x5

    move-object v5, v8

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v9

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v15

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    iget-object v1, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object v0, v10

    move-object v2, v8

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v10, v0, v8, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    move v0, v9

    goto :goto_1b

    :cond_2a
    move-wide/from16 v24, v1

    :cond_2b
    move v0, v15

    :goto_1b
    iget-object v5, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_2f

    iget v0, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_2c

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_2c

    iget v0, v5, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iget v1, v5, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    :cond_2c
    move/from16 v16, v1

    new-array v1, v7, [I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v9

    float-to-int v13, v2

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v15

    float-to-int v2, v2

    iget v3, v12, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v12, Lcom/android/launcher3/ItemInfo;->spanY:I

    const/16 v19, 0x0

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v22, 0x3

    move-object v7, v12

    move-object v12, v8

    move-object/from16 v50, v14

    move v14, v2

    move/from16 v34, v15

    move v15, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v1

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v1, v9

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v0, v2, :cond_2e

    aget v0, v1, v34

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v0, v2, :cond_2d

    goto :goto_1c

    :cond_2d
    move v6, v9

    goto :goto_1d

    :cond_2e
    :goto_1c
    move/from16 v6, v34

    :goto_1d
    aget v0, v1, v9

    iput v0, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    aget v0, v1, v34

    iput v0, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    move v12, v6

    goto :goto_1e

    :cond_2f
    move-object v7, v12

    move-object/from16 v50, v14

    move/from16 v34, v15

    move v12, v9

    :goto_1e
    new-instance v13, Lcom/android/launcher3/Workspace$8;

    move-object v0, v13

    move-object v1, v10

    move-object/from16 v2, v50

    move-wide/from16 v3, v48

    move-object v14, v5

    move-wide/from16 v5, v24

    move-object v15, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;JJLcom/android/launcher3/ItemInfo;)V

    move-object/from16 v0, v50

    iget v1, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_31

    iget v1, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_30

    goto :goto_1f

    :cond_30
    move v1, v9

    goto :goto_20

    :cond_31
    :goto_1f
    move/from16 v1, v34

    :goto_20
    if-eqz v1, :cond_32

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object v6, v2

    goto :goto_21

    :cond_32
    move-object/from16 v6, v23

    :goto_21
    if-eqz v6, :cond_33

    if-eqz v12, :cond_33

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-static {v6, v2, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    :cond_33
    if-eqz v1, :cond_34

    move-object v14, v0

    check-cast v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_34

    invoke-virtual {v14}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-eqz v0, :cond_34

    move/from16 v5, v34

    goto :goto_22

    :cond_34
    move v5, v9

    :goto_22
    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, v15

    move-object v2, v8

    move-object v4, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2040
    move v12, v9

    goto/16 :goto_26

    .line 1867
    :cond_35
    move-wide/from16 v24, v1

    move/from16 v34, v15

    move-object v15, v12

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;J)V

    iget v1, v15, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_36

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v15, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v1, 0x7f04001b

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v12, v15

    check-cast v12, Lcom/android/launcher3/FolderInfo;

    invoke-static {v1, v2, v8, v12}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    move-object v14, v15

    move-object v15, v1

    goto :goto_25

    :cond_36
    :pswitch_1
    iget-wide v1, v15, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    if-nez v1, :cond_38

    instance-of v1, v15, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_37

    move-object v12, v15

    check-cast v12, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v12

    :goto_23
    iput-object v12, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    goto :goto_24

    :cond_37
    instance-of v1, v15, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_38

    new-instance v12, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v15

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v12, v1}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_23

    :cond_38
    move-object v12, v15

    :goto_24
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, v12

    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1, v8, v2}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    move-object v14, v12

    :goto_25
    aget v1, v0, v9

    aget v2, v0, v34

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v9

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v34

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v12

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    iget-object v13, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v10

    move-object v1, v15

    move-wide/from16 v2, v48

    move-object v4, v8

    move v6, v12

    move-object/from16 v51, v8

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object v0, v10

    move-object/from16 v1, v51

    move v3, v12

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v9

    float-to-int v13, v0

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v34

    float-to-int v0, v0

    const/4 v1, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v12, v51

    move-object v3, v14

    move v14, v0

    move-object v8, v15

    move v15, v1

    move-object/from16 v20, v2

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v32, v1, v9

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v33, v1, v34

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-wide/from16 v28, v48

    move-wide/from16 v30, v24

    invoke-virtual/range {v26 .. v33}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v0, v9

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v7, v0, v34

    iget v12, v3, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, v10

    move-object v1, v8

    move-wide/from16 v2, v48

    move-wide/from16 v4, v24

    move-object v14, v8

    move v8, v12

    move v12, v9

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v14}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1, v14, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    goto :goto_26

    .line 1868
    :cond_39
    move v12, v9

    .line 2040
    :cond_3a
    :goto_26
    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_3b

    if-nez v12, :cond_3b

    .line 2041
    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 2043
    :cond_3b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 4

    .line 2887
    if-eqz p3, :cond_0

    .line 2888
    if-eq p1, p0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_1

    .line 2889
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    .line 2891
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_1

    .line 2892
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v0, p3, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v2, p3, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    .line 2894
    if-eqz p1, :cond_1

    .line 2895
    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2901
    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object p1

    .line 2902
    iget-boolean p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 2903
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2905
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 2906
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 978
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    .line 980
    goto :goto_2

    .line 983
    :cond_0
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-nez v0, :cond_2

    .line 984
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 985
    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "android.wallpaper.tap"

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    const-string v1, "android.wallpaper.secondaryTap"

    goto :goto_0

    :goto_1
    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 990
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1349
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    .line 1351
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1353
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1355
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    iget-object v1, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v0, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1357
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 1358
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1359
    return-void
.end method

.method public final onNoCellFound(Landroid/view/View;)V
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2047
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 2048
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->showOutOfSpaceMessage(Z)V

    .line 2055
    return-void

    .line 2056
    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->showOutOfSpaceMessage(Z)V

    .line 2058
    return-void
.end method

.method public final onOverlayScrollChanged(F)V
    .locals 8

    .line 1151
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 1152
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v3, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1156
    :cond_0
    iput-boolean v3, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    goto :goto_1

    .line 1158
    :cond_1
    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    .line 1159
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz v1, :cond_2

    .line 1160
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v6, v3, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    goto :goto_0

    .line 1162
    :cond_2
    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1169
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->announcePageForAccessibility()V

    .line 1171
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 1172
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    .line 1175
    :cond_4
    :goto_1
    sub-float/2addr p1, v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1178
    div-float/2addr p1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1180
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1181
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 1183
    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz p1, :cond_5

    .line 1184
    neg-float v1, v1

    .line 1186
    :cond_5
    iput v1, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    .line 1191
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setTranslationX(F)V

    .line 1192
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 1193
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    .line 1029
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1031
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .line 1034
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 1035
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1037
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1049
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1096
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 1099
    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_1

    .line 1100
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1101
    :goto_1
    if-nez p1, :cond_2

    .line 1102
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1105
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1106
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1107
    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 1

    .line 1052
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1054
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 2

    .line 1057
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1059
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-eqz v1, :cond_0

    .line 1060
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1061
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionEnd()V

    .line 1063
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 470
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 473
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 474
    iput-object p0, v0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 475
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 476
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    .line 477
    return-void

    .line 471
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A Workspace can only have CellLayout children."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected overScroll(F)V
    .locals 5

    .line 1117
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    cmpg-float v0, p1, v3

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 1120
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1117
    :cond_2
    nop

    .line 1120
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_5

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_4

    :cond_3
    cmpg-float v4, p1, v3

    if-gtz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_5

    .line 1123
    :cond_4
    move v1, v2

    goto :goto_1

    .line 1120
    :cond_5
    nop

    .line 1123
    :goto_1
    if-eqz v0, :cond_7

    .line 1124
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    if-eqz v0, :cond_6

    .line 1125
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1126
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionBegin()V

    .line 1129
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    .line 1130
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    iget v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    invoke-interface {p1, v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange$254d549(F)V

    goto :goto_2

    .line 1132
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->dampedOverScroll(F)V

    .line 1135
    :goto_2
    if-eqz v1, :cond_8

    .line 1136
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {p1, v3}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange$254d549(F)V

    .line 1138
    :cond_8
    return-void
.end method

.method public final prepareAccessibilityDrop()V
    .locals 0

    .line 1845
    return-void
.end method

.method public final removeExtraEmptyScreen(ZZ)V
    .locals 2

    .line 632
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 633
    return-void
.end method

.method public final removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 639
    return-void

    .line 642
    :cond_0
    if-lez p3, :cond_1

    .line 643
    new-instance v0, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    return-void

    .line 652
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean p1, p1, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    const-wide/16 v0, -0xc9

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    iget-object p3, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p3

    if-nez p3, :cond_3

    iget-boolean p3, p1, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p3, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p3, v0, v1, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p3}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 653
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 654
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result p3

    const/16 v0, 0x96

    if-ne p3, p1, :cond_4

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 p3, 0x190

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/Workspace;->snapToPage(II)Z

    .line 657
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    return-void

    .line 660
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/Workspace;->snapToPage(II)Z

    .line 661
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    .line 664
    return-void

    .line 665
    :cond_5
    if-eqz p4, :cond_6

    .line 668
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 671
    :cond_6
    if-eqz p2, :cond_7

    .line 672
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 674
    :cond_7
    return-void
.end method

.method public final removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 10

    .line 3107
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 3109
    iget-object v2, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 3111
    new-instance v3, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v3}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 3112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3113
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 3114
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3115
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/ItemInfo;

    if-eqz v8, :cond_0

    .line 3116
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 3117
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    iget-wide v8, v8, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v8, v9, v7}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3113
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3122
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 3123
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3125
    if-eqz v6, :cond_2

    .line 3128
    invoke-virtual {v1, v6}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3129
    instance-of v4, v6, Lcom/android/launcher3/DropTarget;

    if-eqz v4, :cond_3

    .line 3130
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v6, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    .line 3132
    :cond_2
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 3134
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3135
    if-eqz v6, :cond_3

    .line 3136
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/FolderInfo;

    .line 3137
    invoke-virtual {v6}, Lcom/android/launcher3/FolderInfo;->prepareAutoUpdate()V

    .line 3138
    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 3141
    :cond_3
    goto :goto_2

    .line 3142
    :cond_4
    goto/16 :goto_0

    .line 3145
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 3146
    return-void
.end method

.method public final removeWorkspaceItem(Landroid/view/View;)V
    .locals 1

    .line 2912
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2913
    if-eqz v0, :cond_0

    .line 2914
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2922
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1

    .line 2923
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 2925
    :cond_1
    return-void
.end method

.method public final resetTransitionTransform()V
    .locals 1

    .line 2845
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 2846
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 2847
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 2849
    :cond_0
    return-void
.end method

.method public final restoreInstanceStateForChild(I)V
    .locals 2

    .line 2955
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2957
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    .line 2958
    if-eqz p1, :cond_0

    .line 2959
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 2962
    :cond_0
    return-void
.end method

.method public final runOnOverlayHidden(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1222
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    .line 1226
    new-instance v1, Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/-$$Lambda$Workspace$2RyZ1PeoHliG2qvG06syCDusNqs;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    .line 1231
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1232
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1233
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    new-instance v0, Lcom/android/launcher3/Workspace$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1243
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 1245
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public scrollLeft()V
    .locals 1

    .line 2977
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 2978
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 2981
    if-eqz v0, :cond_1

    .line 2982
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 2984
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .line 2988
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 2989
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 2991
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 2992
    if-eqz v0, :cond_1

    .line 2993
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 2995
    :cond_1
    return-void
.end method

.method final setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    .line 2156
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2159
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 2160
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    .line 2161
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2165
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/graphics/ViewScrim;->get(Landroid/view/View;)Lcom/android/launcher3/graphics/ViewScrim;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/graphics/ViewScrim;->invalidate()V

    .line 2166
    return-void
.end method

.method final setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 6

    .line 2142
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2144
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-boolean v4, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v1, v5, v2

    aput v1, v3, v4

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v3, v2

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v5, v5

    rem-int/2addr v3, v5

    iput v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2146
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 2147
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_2

    .line 2148
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean v2, p1, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2150
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2151
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2152
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2153
    return-void
.end method

.method final setCurrentDropOverCell(II)V
    .locals 1

    .line 2173
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2174
    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 2175
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 2176
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2178
    :cond_1
    return-void
.end method

.method final setDragMode(I)V
    .locals 2

    .line 2181
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    .line 2182
    if-nez p1, :cond_0

    .line 2183
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2187
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2188
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2189
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2190
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2191
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2192
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2193
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2194
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2195
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2196
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2198
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 2200
    :cond_4
    return-void
.end method

.method public final setFinalTransitionTransform()V
    .locals 1

    .line 2838
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 2839
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    .line 2840
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 2841
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 2843
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 293
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    .line 294
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    .line 295
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 297
    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 298
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/Workspace;->setPadding(IIII)V

    .line 300
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    goto :goto_0

    .line 307
    :cond_0
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    .line 310
    :goto_0
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 311
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    .line 314
    invoke-virtual {v2, v0, v3, v0, p1}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 312
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 316
    :cond_1
    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    .line 1488
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition$503aab85()V

    .line 1489
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 1490
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    .line 1491
    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V
    .locals 3

    .line 1499
    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/LauncherState;)V

    .line 1500
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {p3, p2}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->getProperSetter(Lcom/android/launcher3/anim/AnimatorSetBuilder;)Lcom/android/launcher3/anim/PropertySetter;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 1504
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->hasMultipleVisiblePages:Z

    if-eqz p1, :cond_0

    .line 1505
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 1509
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1510
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1511
    iget-wide v1, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1512
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1513
    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 1514
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2

    .line 1143
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1143
    return p1
.end method

.method public final showOutlinesTemporarily()V
    .locals 1

    .line 1308
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 1311
    :cond_0
    return-void
.end method

.method public final showPageIndicatorAtCurrentScroll()V
    .locals 5

    .line 1110
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeMaxScrollX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->animateLineToAlpha(I)V

    iput v1, v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mCurrentScroll:I

    iget v1, v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-nez v1, :cond_0

    iput v2, v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->TOTAL_SCROLL:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->invalidate()V

    :goto_0
    iget-boolean v1, v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->hideAfterDelay()V

    .line 1113
    :cond_2
    return-void
.end method

.method protected snapToDestination()V
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getUnboundedScrollX()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/Workspace;->mMaxScrollX:I

    if-gt v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getUnboundedScrollX()I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1087
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWasInOverscroll:Z

    .line 1088
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPageImmediately(I)Z

    return-void

    .line 1090
    :cond_3
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1092
    return-void
.end method

.method public final stripEmptyScreens()V
    .locals 12

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 774
    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 778
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 779
    return-void

    .line 782
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 783
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 784
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v3

    .line 785
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 786
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v6

    .line 787
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    .line 789
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_2

    .line 790
    iget-object v8, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 791
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 795
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v3

    .line 799
    nop

    .line 802
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 803
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    .line 804
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 805
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v7

    if-le v7, v1, :cond_6

    .line 808
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v7, v0, :cond_4

    .line 809
    add-int/lit8 v6, v6, 0x1

    .line 812
    :cond_4
    if-eqz v3, :cond_5

    .line 813
    const/4 v7, 0x2

    invoke-virtual {v8, v4, v7}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 816
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 819
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 820
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v9, -0xc9

    invoke-virtual {v7, v9, v10, v8}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 821
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    goto :goto_1

    .line 825
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 827
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 830
    :cond_8
    if-ltz v6, :cond_9

    .line 831
    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 833
    :cond_9
    return-void
.end method

.method final updateChildrenLayersEnabled()V
    .locals 3

    .line 1379
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1381
    :cond_0
    move v0, v1

    goto :goto_1

    .line 1379
    :cond_1
    :goto_0
    nop

    .line 1381
    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_3

    .line 1382
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1383
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_2

    .line 1384
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    return-void

    .line 1386
    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1387
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 1388
    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1392
    :cond_3
    return-void
.end method

.method final willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 4

    .line 1748
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1749
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1750
    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1

    .line 1751
    :cond_0
    return v0

    .line 1755
    :cond_1
    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 1756
    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    .line 1757
    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1758
    const/4 p1, 0x1

    return p1

    .line 1761
    :cond_2
    return v0
.end method

.method final willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 1

    .line 1742
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 1743
    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    .line 1744
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method final willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z
    .locals 4

    .line 1715
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1716
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1717
    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1

    .line 1718
    :cond_0
    return v0

    .line 1722
    :cond_1
    nop

    .line 1723
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1724
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v1, :cond_2

    .line 1727
    move v1, v2

    goto :goto_0

    .line 1724
    :cond_2
    nop

    .line 1727
    :cond_3
    move v1, v0

    :goto_0
    if-eqz p2, :cond_8

    if-nez v1, :cond_8

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p3, :cond_4

    goto :goto_3

    .line 1731
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/ShortcutInfo;

    .line 1732
    iget p3, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz p3, :cond_6

    iget p3, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq p3, v2, :cond_6

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 p3, 0x6

    if-ne p1, p3, :cond_5

    goto :goto_1

    .line 1737
    :cond_5
    move p1, v0

    goto :goto_2

    .line 1732
    :cond_6
    :goto_1
    nop

    .line 1737
    move p1, v2

    :goto_2
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0

    .line 1728
    :cond_8
    :goto_3
    return v0
.end method

.method final willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 1

    .line 1709
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 1710
    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    .line 1711
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public final workspaceIconsCanBeDragged()Z
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->workspaceIconsCanBeDragged:Z

    return v0
.end method
