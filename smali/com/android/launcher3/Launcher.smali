.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/BaseDraggingActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherExterns;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;


# instance fields
.field public mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field private mAppLaunchSuccess:Z

.field mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

.field public mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field public mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field public mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field public mDragHandleIndicator:Landroid/view/View;

.field public mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field public mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field public mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field public mHotseat:Lcom/android/launcher3/Hotseat;

.field mHotseatSearchBox:Landroid/view/View;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field public mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field public mLauncherView:Landroid/view/View;

.field public mModel:Lcom/android/launcher3/LauncherModel;

.field public mModelWriter:Lcom/android/launcher3/model/ModelWriter;

.field public mOldConfig:Landroid/content/res/Configuration;

.field private mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

.field private mOverviewPanel:Landroid/view/View;

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field public mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field public mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field public mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

.field private mScrimAnimator:Landroid/animation/ObjectAnimator;

.field public mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mShouldFadeInScrim:Z

.field public mStateManager:Lcom/android/launcher3/LauncherStateManager;

.field private mSynchronouslyBoundPage:I

.field private final mTmpAddItemCellCoordinates:[I

.field public mWorkspace:Lcom/android/launcher3/Workspace;

.field public mWorkspaceLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;-><init>()V

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPage:I

    .line 244
    new-instance v0, Lcom/android/launcher3/-$$Lambda$Launcher$oNLV8DXw19UoeUsA79iVX3UfK2k;

    invoke-direct {v0, p0}, Lcom/android/launcher3/-$$Lambda$Launcher$oNLV8DXw19UoeUsA79iVX3UfK2k;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1103
    new-instance v0, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherStateManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/Launcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/launcher3/Launcher;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    return p1
.end method

.method private bindAddScreens(Ljava/util/ArrayList;)V
    .locals 8

    .line 1809
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1810
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1811
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1812
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 1814
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v5, v4, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v6, -0xc9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    iget-object v5, v4, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_0
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    .line 1810
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1817
    :cond_2
    return-void
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 473
    move-object/from16 v3, p4

    iget-wide v4, v3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 474
    iget-wide v6, v3, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 477
    iget-wide v4, v3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 480
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    const/4 v8, 0x5

    if-eq v1, v8, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 488
    :pswitch_0
    invoke-direct {v0, v2, v7}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 489
    goto/16 :goto_5

    .line 491
    :pswitch_1
    const/4 v1, 0x4

    .line 493
    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_e

    .line 496
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 497
    invoke-virtual {v3, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 498
    if-eqz v2, :cond_e

    .line 499
    new-instance v3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v3, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    const/16 v2, 0xd

    .line 500
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    goto/16 :goto_5

    .line 485
    :cond_1
    invoke-virtual {v0, v2, v3, v6, v6}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 486
    goto/16 :goto_5

    .line 482
    :cond_2
    iget-wide v1, v3, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget v9, v3, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v10, v3, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v11

    if-ne v11, v8, :cond_e

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v15, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v14

    sget-boolean v11, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v11

    invoke-static {v0, v11, v12, v13}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v11

    goto :goto_0

    :cond_4
    move-object v11, v6

    :goto_0
    if-nez v11, :cond_8

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v6, v3, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v6, p2

    invoke-static {v0, v6}, Lcom/android/launcher3/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_6

    const-string v0, "Launcher"

    const-string v1, "Unable to parse a valid custom shortcut result"

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    new-instance v11, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v11, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring malicious intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v8, v6

    goto :goto_3

    :cond_8
    move-object v8, v11

    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v6, v1, v11

    if-gez v6, :cond_b

    invoke-virtual {v0, v8}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    if-ltz v9, :cond_9

    if-ltz v10, :cond_9

    aput v9, v15, v7

    const/4 v6, 0x1

    aput v10, v15, v6

    iget-object v9, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v3

    move-wide v11, v1

    move-object v13, v14

    move-object/from16 v18, v14

    move-object v14, v15

    move-object/from16 v19, v15

    move v15, v6

    invoke-virtual/range {v9 .. v17}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z

    move-result v6

    if-nez v6, :cond_d

    new-instance v6, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v6}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    iput-object v8, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v12, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v16, v6

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v11

    :goto_4
    if-nez v11, :cond_a

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    goto :goto_5

    :cond_a
    iget-object v9, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    aget v12, v6, v7

    aget v13, v6, v10

    move-object v6, v9

    move-object v7, v8

    move-object v14, v8

    move-wide v8, v1

    move-wide v10, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3, v14}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_5

    :cond_b
    move-object v14, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->findFolderIcon(J)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    iget v1, v3, Lcom/android/launcher3/util/PendingRequestArgs;->rank:I

    invoke-virtual {v0, v14, v1, v7}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;IZ)V

    goto :goto_5

    :cond_c
    const-string v0, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Could not find folder with id "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to add shortcut."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_d
    nop

    .line 502
    :cond_e
    :goto_5
    return-wide v4

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;
    .locals 2

    .line 2078
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$13;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$13;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 2079
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2084
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2085
    iput p2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2086
    iget p2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez p2, :cond_1

    .line 2087
    iput-object v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    .line 2090
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    iget-object p2, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget p2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 2091
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 2094
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2095
    return-object v1

    .line 2080
    :cond_4
    :goto_1
    const-string p1, "Launcher"

    const-string p2, "Widget update called, when the widget no longer exists."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-object v0
.end method

.method private deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 5

    .line 1583
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 1584
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1587
    new-instance v1, Lcom/android/launcher3/Launcher$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 1592
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 1595
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 677
    if-nez v0, :cond_0

    .line 680
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 681
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    return-wide p1

    .line 683
    :cond_0
    return-wide p1
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 1

    .line 2398
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 2399
    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    .line 2401
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 512
    move-object/from16 v1, p3

    iget-boolean v3, v6, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v3, :cond_0

    .line 514
    new-instance v3, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v3, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 515
    return-void

    .line 517
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 520
    iget-object v4, v6, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 521
    iput-object v3, v6, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 522
    if-nez v4, :cond_1

    .line 523
    return-void

    .line 526
    :cond_1
    iget v3, v4, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v5, 0x2

    const/4 v7, 0x0

    if-ne v3, v5, :cond_2

    iget v3, v4, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    .line 528
    :cond_2
    move v3, v7

    :goto_0
    new-instance v5, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v5, v6}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 535
    const/16 v8, 0xb

    const/16 v9, 0x1f4

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-ne v0, v8, :cond_6

    .line 537
    if-eqz v1, :cond_3

    .line 538
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 539
    move v1, v0

    goto :goto_1

    .line 538
    :cond_3
    nop

    .line 539
    move v1, v11

    :goto_1
    if-nez v2, :cond_4

    .line 540
    invoke-virtual {v6, v7, v1, v4}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 541
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v5, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    return-void

    .line 543
    :cond_4
    if-ne v2, v11, :cond_5

    .line 544
    const/4 v3, 0x0

    .line 546
    invoke-virtual {v4}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v5

    const/16 v7, 0x1f4

    .line 544
    move-object v0, v6

    move-object v2, v4

    move-object v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 549
    :cond_5
    return-void

    .line 552
    :cond_6
    const/16 v8, 0x9

    if-eq v0, v8, :cond_8

    const/4 v8, 0x5

    if-ne v0, v8, :cond_7

    goto :goto_2

    .line 556
    :cond_7
    move v8, v7

    goto :goto_3

    .line 552
    :cond_8
    :goto_2
    nop

    .line 556
    move v8, v10

    :goto_3
    if-eqz v8, :cond_e

    .line 558
    if-eqz v1, :cond_9

    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    goto :goto_4

    .line 559
    :cond_9
    nop

    .line 560
    :goto_4
    if-gez v11, :cond_a

    .line 561
    goto :goto_5

    .line 563
    :cond_a
    nop

    .line 567
    move v3, v11

    :goto_5
    if-ltz v3, :cond_d

    if-nez v2, :cond_b

    goto :goto_6

    .line 582
    :cond_b
    iget-wide v0, v4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v11, -0x64

    cmp-long v0, v0, v11

    if-nez v0, :cond_c

    .line 585
    iget-wide v0, v4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 586
    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 588
    :cond_c
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v11, v4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 589
    invoke-virtual {v0, v11, v12}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 591
    iput-boolean v10, v5, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 592
    new-instance v8, Lcom/android/launcher3/Launcher$3;

    move-object v0, v8

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    .line 599
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v8, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 602
    return-void

    .line 568
    :cond_d
    :goto_6
    const-string v0, "Launcher"

    const-string v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v6, v7, v3, v4}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 572
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, v6}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 579
    iget-object v1, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v10, v0, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 581
    return-void

    .line 605
    :cond_e
    const/16 v8, 0xd

    if-eq v0, v8, :cond_12

    const/16 v8, 0xc

    if-ne v0, v8, :cond_f

    goto :goto_8

    .line 615
    :cond_f
    if-ne v0, v10, :cond_11

    .line 617
    if-ne v2, v11, :cond_10

    iget-wide v12, v4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-eqz v3, :cond_10

    .line 618
    invoke-direct {v6, v0, v1, v11, v4}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 619
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v5, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_7

    .line 622
    :cond_10
    if-nez v2, :cond_11

    .line 623
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v5, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 627
    :cond_11
    :goto_7
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    .line 628
    return-void

    .line 607
    :cond_12
    :goto_8
    if-ne v2, v11, :cond_13

    .line 609
    invoke-direct {v6, v0, v1, v3, v4}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 612
    :cond_13
    return-void
.end method

.method private inflateAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 8

    .line 1965
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1966
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 1968
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1969
    return-object v0

    .line 1972
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1978
    nop

    .line 1987
    move-object v2, v3

    goto :goto_0

    .line 1979
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1981
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    goto :goto_0

    .line 1983
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 1987
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_a

    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_a

    .line 1989
    if-nez v2, :cond_3

    .line 1990
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing restored widget: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", as the provider is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 1994
    return-object v3

    .line 1998
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_9

    .line 1999
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2001
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    iput v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2002
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v0, v5

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2006
    new-instance v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v0, v2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 2007
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 2008
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 2009
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 2010
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 2011
    invoke-static {p0, v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 2013
    const/16 v5, 0x20

    .line 2014
    invoke-virtual {p1, v5}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    .line 2015
    if-eqz v5, :cond_5

    iget-object v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v6, :cond_5

    .line 2016
    iget-object v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2017
    if-eqz v0, :cond_4

    .line 2018
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2020
    :cond_4
    nop

    .line 2022
    move-object v0, v6

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v7, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7, v2, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    .line 2028
    iput-object v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 2029
    iget v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v6, v6, -0x21

    iput v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2032
    if-eqz v0, :cond_8

    .line 2035
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    if-eqz v5, :cond_6

    goto :goto_1

    .line 2037
    :cond_6
    goto :goto_2

    .line 2036
    :cond_7
    :goto_1
    nop

    .line 2037
    move v1, v4

    :goto_2
    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2040
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2041
    goto :goto_3

    .line 2042
    :cond_9
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    .line 2046
    iput v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2047
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2052
    :cond_a
    :goto_3
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v0, :cond_c

    .line 2054
    if-nez v2, :cond_b

    .line 2055
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing invalid widget: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2057
    return-object v3

    .line 2060
    :cond_b
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 2061
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 2062
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_4

    .line 2064
    :cond_c
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v1, v4}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 2066
    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2068
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2069
    return-object v0
.end method

.method private initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    .line 385
    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    .line 386
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/LauncherModel;->getWriter(ZZ)Lcom/android/launcher3/model/ModelWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 387
    return-void
.end method

.method public static synthetic lambda$executeOnNextDraw$2(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 2110
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->setDeferUpdates(Z)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/launcher3/Launcher;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 246
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 247
    return-void
.end method

.method public static synthetic lambda$setupViews$1(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    return-void
.end method

.method private prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 3

    .line 1097
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1098
    iget-boolean v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {p1, p0, v0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    iput-boolean v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 1099
    :cond_0
    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    .line 1100
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1101
    return-void
.end method


# virtual methods
.method final addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6

    .line 1426
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 1427
    return-void
.end method

.method final addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 1

    .line 1431
    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    new-instance v0, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 1441
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 1442
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p5, p3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 1444
    :cond_0
    return-void
.end method

.method final addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;
    .locals 10

    move-object v0, p0

    .line 1524
    new-instance v9, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v9}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 1525
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1528
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    move-object v2, v9

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1531
    const v1, 0x7f04001b

    move-object v2, p1

    invoke-static {v1, v0, v2, v9}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1532
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1, v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1534
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1535
    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 1536
    return-object v1
.end method

.method public final addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V
    .locals 0

    .line 1448
    iput-wide p2, p1, Lcom/android/launcher3/PendingAddItemInfo;->container:J

    .line 1449
    iput-wide p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:J

    .line 1450
    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p6, :cond_0

    .line 1451
    aget p4, p6, p2

    iput p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellX:I

    .line 1452
    aget p4, p6, p3

    iput p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellY:I

    .line 1454
    :cond_0
    iput p7, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 1455
    iput p8, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 1457
    iget p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 p5, 0x0

    if-eq p4, p3, :cond_3

    packed-switch p4, :pswitch_data_0

    .line 1466
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unknown item type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1460
    :pswitch_0
    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object p2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object p3

    if-eqz p2, :cond_1

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p4, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    iput-object p5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p2

    iget-object p4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    iget-object p6, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object p7, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {p6, p2, p7, p4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0, p2, p1, p5, p3}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    return-void

    :cond_2
    const/16 p4, 0xb

    invoke-virtual {p3, p0, p2, p1, p4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    .line 1461
    return-void

    .line 1463
    :cond_3
    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance p4, Landroid/content/Intent;

    const-string p6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {p4, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p6, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p4, p6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {p1, p0, p3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p3, p2, p5}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 1464
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final bindAllApplications(Ljava/util/ArrayList;)V
    .locals 2

    .line 2174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    .line 2176
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p1, :cond_0

    .line 2177
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->bindAllApplications$6ba92955()V

    .line 2179
    :cond_0
    return-void
.end method

.method public final bindAllWidgets(Ljava/util/ArrayList;)V
    .locals 1

    .line 2253
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iput-object p1, v0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/ArrayList;

    .line 2254
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    .line 2255
    if-eqz p1, :cond_0

    .line 2256
    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->onWidgetsBound()V

    .line 2258
    :cond_0
    return-void
.end method

.method public final bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .locals 3

    .line 2248
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 2249
    return-void
.end method

.method public final bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 2

    .line 1957
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 1958
    if-eqz v0, :cond_0

    .line 1959
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1960
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 1962
    :cond_0
    return-void
.end method

.method public final bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1823
    if-eqz p1, :cond_0

    .line 1824
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 1829
    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1830
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 1832
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1833
    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 1837
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2, p1, p1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 1838
    return-void
.end method

.method public final bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .locals 1

    .line 2197
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    .line 2198
    return-void
.end method

.method public final bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iput-object p1, v0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 2188
    return-void
.end method

.method public final bindItems(Ljava/util/List;Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 1848
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 1849
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v8, v7, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    iget-wide v7, v7, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    :goto_0
    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    .line 1851
    :cond_2
    move v3, v4

    :goto_2
    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1852
    nop

    .line 1853
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 1854
    const-wide/16 v9, -0x1

    :goto_3
    if-ge v4, v6, :cond_7

    .line 1855
    move-object/from16 v11, p1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/ItemInfo;

    .line 1858
    iget-wide v13, v12, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v15, -0x65

    cmp-long v13, v13, v15

    if-nez v13, :cond_3

    iget-object v13, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v13, :cond_6

    .line 1860
    :cond_3
    iget v13, v12, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v13, :pswitch_data_0

    .line 1887
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Item Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1880
    :pswitch_1
    move-object v13, v12

    check-cast v13, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v0, v13}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v13

    .line 1881
    if-nez v13, :cond_4

    .line 1882
    goto/16 :goto_5

    .line 1873
    :pswitch_2
    const v13, 0x7f04001b

    .line 1874
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object v15, v12

    check-cast v15, Lcom/android/launcher3/FolderInfo;

    .line 1873
    invoke-static {v13, v0, v14, v15}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v13

    .line 1876
    goto :goto_4

    .line 1868
    :pswitch_3
    move-object v13, v12

    check-cast v13, Lcom/android/launcher3/ShortcutInfo;

    .line 1869
    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v13

    .line 1870
    nop

    .line 1893
    :cond_4
    :goto_4
    iget-wide v14, v12, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 1894
    iget-object v14, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v7, v12, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v14, v7, v8}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 1895
    if-eqz v7, :cond_5

    iget v8, v12, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v14, v12, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v7, v8, v14}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1896
    iget v8, v12, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v13, v12, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v7, v8, v13}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 1897
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 1898
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Collision while binding workspace item: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ". Collides with "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1903
    const-string v8, "Launcher"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iget-object v7, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v7, v12}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 1905
    goto :goto_5

    .line 1909
    :cond_5
    invoke-virtual {v5, v13, v12}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1910
    if-eqz v3, :cond_6

    .line 1912
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1913
    invoke-virtual {v13, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1914
    invoke-virtual {v13, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1915
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v13, v7, v7, v7}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1c2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit8 v8, v4, 0x55

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    const v9, 0x3fa66666    # 1.3f

    invoke-direct {v8, v9}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1916
    iget-wide v7, v12, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 1854
    move-wide v9, v7

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1920
    :cond_7
    if-eqz v3, :cond_9

    .line 1922
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-lez v3, :cond_9

    .line 1923
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v3

    .line 1924
    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v9, v10}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v6

    .line 1925
    new-instance v7, Lcom/android/launcher3/Launcher$10;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 1931
    cmp-long v1, v9, v3

    const-wide/16 v2, 0x1f4

    if-eqz v1, :cond_8

    .line 1934
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v4, Lcom/android/launcher3/Launcher$11;

    invoke-direct {v4, v0, v6, v7}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 1946
    :cond_8
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1950
    :cond_9
    :goto_6
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 1951
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 1

    .line 2202
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updatePromiseAppProgress(Lcom/android/launcher3/PromiseAppInfo;)V

    .line 2203
    return-void
.end method

.method public final bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2

    .line 2230
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$20;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$20;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2231
    return-void
.end method

.method public final bindScreens(Ljava/util/ArrayList;)V
    .locals 3

    .line 1791
    nop

    .line 1792
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1793
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1794
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1795
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1800
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 1805
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p1, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    iget-boolean v0, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 1806
    :cond_1
    return-void
.end method

.method public final bindShortcutsChanged$113655ee(Ljava/util/ArrayList;)V
    .locals 8

    .line 2218
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2219
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v6, v6, Lcom/android/launcher3/ShortcutInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/launcher3/Workspace$16;

    invoke-direct {p1, v0, v2}, Lcom/android/launcher3/Workspace$16;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    new-instance p1, Lcom/android/launcher3/Workspace$17;

    invoke-direct {p1, v0, v3}, Lcom/android/launcher3/Workspace$17;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2221
    :cond_1
    return-void
.end method

.method public final bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 6

    .line 2207
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v1, v0, p1, v2}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppWidgetHost;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v3, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v4

    iget v3, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher3/Workspace$21;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$21;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2208
    :cond_2
    return-void
.end method

.method public final bindWorkspaceComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 3

    .line 2242
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 2243
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2244
    :cond_0
    return-void
.end method

.method public clearPendingBinds()V
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 1758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 1760
    :cond_0
    return-void
.end method

.method final completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .locals 9

    .line 1072
    if-nez p4, :cond_0

    .line 1073
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p4

    .line 1077
    :cond_0
    new-instance v8, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v8, p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1078
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 1079
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 1080
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 1081
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 1082
    invoke-virtual {p4}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1087
    if-nez p3, :cond_1

    .line 1089
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p2, p0, p1, p4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    .line 1091
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1092
    invoke-direct {p0, p3, v8}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1093
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, p3, v8}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1094
    return-void
.end method

.method final completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 11

    .line 689
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v1, p3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 690
    nop

    .line 691
    nop

    .line 693
    nop

    .line 694
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 695
    const/4 p1, 0x3

    .line 696
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 697
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 696
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 698
    nop

    .line 699
    new-instance v1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    .line 706
    nop

    .line 710
    move v8, p1

    move-object v9, v0

    move-object v7, v1

    goto :goto_1

    .line 706
    :cond_0
    if-nez p1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 708
    const/4 p1, 0x4

    goto :goto_0

    .line 710
    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v8, p1

    move-object v7, v0

    move-object v9, v7

    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p1, :cond_2

    .line 711
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 712
    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v10, 0x1

    .line 711
    move-object v4, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    return-void

    .line 714
    :cond_2
    if-eqz v7, :cond_3

    .line 716
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 718
    :cond_3
    return-void
.end method

.method public final createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 3

    .line 966
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 967
    const/4 v1, 0x0

    const v2, 0x7f04000d

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    .line 968
    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 969
    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 971
    return-object p1
.end method

.method final createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1599
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1720
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1721
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 1722
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1725
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_0

    .line 1726
    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1727
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    .line 1725
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 2273
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseDraggingActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2275
    array-length v0, p4

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const-string v2, "--all"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Workspace Items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Homescreen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2281
    move v3, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2282
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2283
    if-eqz v4, :cond_0

    .line 2284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2277
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2289
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Hotseat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2291
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2292
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 2293
    if-eqz v2, :cond_3

    .line 2294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2291
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2299
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPendingRequestArgs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPendingActivityResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " deviceProfile isTransposed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " orientation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    goto :goto_3

    .line 2308
    :catch_0
    move-exception v0

    .line 2312
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2314
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p2, :cond_5

    .line 2315
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p2, p1, p3}, Lcom/android/launcher3/LauncherCallbacks;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2317
    :cond_5
    return-void
.end method

.method public final executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 2

    .line 2104
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 2107
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2108
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2109
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->setDeferUpdates(Z)V

    .line 2110
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$Launcher$xO0LDbNRN-CvZ7J4oWavTQwTZ28;

    invoke-direct {v1, p0}, Lcom/android/launcher3/-$$Lambda$Launcher$xO0LDbNRN-CvZ7J4oWavTQwTZ28;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2113
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    .line 2114
    return-void
.end method

.method public final findFolderIcon(J)Lcom/android/launcher3/folder/FolderIcon;
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;J)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final finishBindingItems()V
    .locals 6

    .line 2138
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 2141
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 2143
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_2

    .line 2144
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v0, v0, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v3, v3, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 2146
    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 2149
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 2152
    return-void
.end method

.method public final finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 2

    .line 2124
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2126
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;

    invoke-direct {v1, p1}, Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;-><init>(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 2125
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2126
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 2127
    :cond_1
    if-eqz p1, :cond_2

    .line 2128
    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    .line 2130
    :cond_2
    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Z)Landroid/app/ActivityOptions;
    .locals 0

    .line 1636
    if-eqz p2, :cond_0

    .line 1637
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/LauncherAppTransitionManager;->getDefaultActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1

    .line 1638
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 1636
    return-object p1
.end method

.method public getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getCellLayout(JJ)Lcom/android/launcher3/CellLayout;
    .locals 2

    .line 1690
    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 1691
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_0

    .line 1692
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object p1, p1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    return-object p1

    .line 1694
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 1697
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, p3, p4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentWorkspaceScreen()I
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    return v0

    .line 1746
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherRootView;

    return-object v0
.end method

.method public invalidateParent(Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .line 458
    new-instance v0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 459
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v1, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object p1

    .line 461
    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 465
    :cond_0
    return-void
.end method

.method final isHotseatLayout(Landroid/view/View;)Z
    .locals 1

    .line 1682
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 1683
    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1682
    return p1
.end method

.method public final isInState(Lcom/android/launcher3/LauncherState;)Z
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isWorkspaceLocked()Z
    .locals 1

    .line 1406
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 634
    return-void
.end method

.method public final onAppWidgetHostReset()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 407
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1134
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onAttachedToWindow()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1137
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onAttachedToWindow()V

    .line 1140
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 1604
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    return-void

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1608
    return-void

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 1613
    return-void

    .line 1618
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 1619
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_3

    .line 1621
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()V

    return-void

    .line 1622
    :cond_3
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1623
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 1624
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v3, v3, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->containerType:I

    iget v4, v1, Lcom/android/launcher3/LauncherState;->containerType:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(III)V

    .line 1626
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1627
    return-void

    .line 1629
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showOutlinesTemporarily()V

    .line 1631
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 354
    and-int/lit16 v0, v0, 0x480

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherRootView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager;->reapplyState()V

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->rebindModel()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 370
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrResumeChanged(Lcom/android/launcher3/Launcher;)V

    .line 371
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 265
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    .line 272
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 273
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 275
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 276
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    new-instance v1, Lcom/android/launcher3/Launcher$PrefChangeHandler;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$PrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 277
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 278
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 280
    new-instance v0, Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 281
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 282
    new-instance v0, Lcom/android/launcher3/LauncherStateManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherStateManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    .line 284
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 286
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 289
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f040021

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 291
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v2, 0x7f0e0028

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->initParentViews(Landroid/view/View;)V

    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    const v0, 0x7f0e0029

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragHandleIndicator:Landroid/view/View;

    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseatSearchBox:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v0, Lcom/android/launcher3/-$$Lambda$Launcher$AygIv43tBuDOtg43qsgIeUnALyU;

    invoke-direct {v0, p0}, Lcom/android/launcher3/-$$Lambda$Launcher$AygIv43tBuDOtg43qsgIeUnALyU;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/uioverrides/UiFactory;->setOnTouchControllersChangedListener(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v3, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0e0051

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mMoveTarget:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v1, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 292
    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 294
    new-instance v0, Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/states/RotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    .line 295
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppTransitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/states/InternalStateHandler;->handleCreate(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    if-eqz p1, :cond_0

    .line 302
    const-string v1, "launcher.state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 305
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v3, "launcher.state"

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher3/LauncherState;->values()[Lcom/android/launcher3/LauncherState;

    move-result-object v4

    aget-object v3, v4, v3

    iget-boolean v4, v3, Lcom/android/launcher3/LauncherState;->disableRestore:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v4, v3, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    :cond_1
    const-string v3, "launcher.request_args"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v3, :cond_2

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    :cond_2
    const-string v3, "launcher.activity_result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    const-string v3, "launcher.widget_panel"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {p0, v1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/WidgetsFullSheet;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/widget/WidgetsFullSheet;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 309
    :cond_3
    nop

    .line 310
    const/16 v3, -0x3e9

    if-eqz p1, :cond_4

    .line 311
    const-string v4, "launcher.current_screen"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 314
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 315
    if-nez v0, :cond_6

    .line 318
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    goto :goto_0

    .line 322
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 324
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 328
    :cond_6
    :goto_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setDefaultKeyMode(I)V

    .line 330
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setContentView(Landroid/view/View;)V

    .line 331
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/LauncherRootView;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 334
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    const v0, 0x7f01002c

    .line 341
    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 340
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 343
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p1, :cond_7

    .line 344
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate$79e5e33f()V

    .line 346
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    iget-boolean v0, p1, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    if-nez v0, :cond_8

    iput-boolean v2, p1, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    invoke-virtual {p1}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    .line 348
    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1325
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    .line 1327
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1328
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$10;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Workspace$10;-><init>(Lcom/android/launcher3/Workspace;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 1330
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/uioverrides/UiFactory;->setOnTouchControllersChangedListener(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 1335
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v3, v1, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    move v2, v4

    nop

    :cond_0
    if-eqz v2, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1337
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    iget-boolean v1, v0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-nez v1, :cond_2

    iput-boolean v4, v0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    iget-object v1, v0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/states/RotationHelper;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1340
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    if-eqz v0, :listener_is_null

    .line 1363
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1367

    :listener_is_null

    .line 1343
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1348
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1350
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->onDestroyActivity()V

    .line 1352
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    .line 1354
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDestroy()V

    .line 1357
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1144
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDetachedFromWindow()V

    .line 1146
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDetachedFromWindow()V

    .line 1149
    :cond_0
    return-void
.end method

.method protected onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 2

    .line 1651
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.CALL"

    .line 1652
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    .line 1653
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    nop

    .line 1657
    const/16 v0, 0xe

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p1

    .line 1656
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1658
    const-string p1, "android.permission.CALL_PHONE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    .line 1660
    const/4 p1, 0x1

    return p1

    .line 1662
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 2348
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2349
    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 2357
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2358
    instance-of v2, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_5

    .line 2359
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ItemInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 2361
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    const v4, 0x7f0e0011

    .line 2360
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2363
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 2364
    return v1

    .line 2369
    :cond_1
    new-instance v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->getActionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v5, v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-direct {v3, v5, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v0, v4, v6, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 2370
    return v1

    .line 2351
    :cond_4
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2352
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 2353
    return v1

    .line 2375
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2380
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 2383
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean p1, p1, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 2384
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2386
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 2390
    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p0, p1, p1}, Lcom/android/launcher3/views/OptionsPopupView;->showDefaultOptions(Lcom/android/launcher3/Launcher;FF)V

    .line 2392
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2394
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onLauncherProviderChanged()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onLauncherProviderChange()V

    .line 431
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 1219
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_0

    .line 1227
    move v0, v1

    goto :goto_0

    .line 1222
    :cond_0
    nop

    .line 1227
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1228
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1229
    move v3, v1

    goto :goto_1

    .line 1228
    :cond_1
    nop

    .line 1229
    move v3, v2

    :goto_1
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1230
    nop

    .line 1231
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v5

    invoke-static {p0, p1, v5}, Lcom/android/launcher3/states/InternalStateHandler;->handleNewIntent(Lcom/android/launcher3/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    .line 1233
    if-eqz v4, :cond_8

    .line 1234
    if-nez p1, :cond_6

    .line 1237
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    .line 1238
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    .line 1239
    if-eqz v4, :cond_2

    .line 1240
    invoke-virtual {v4, v2}, Lcom/android/launcher3/AbstractFloatingView;->logActionCommand(I)V

    goto :goto_2

    .line 1241
    :cond_2
    if-eqz v0, :cond_3

    .line 1242
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v4, v4, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->containerType:I

    invoke-static {v4}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    .line 1243
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 1244
    nop

    .line 1245
    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    .line 1244
    invoke-virtual {p1, v2, v4, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 1249
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 1251
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1254
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1258
    :cond_4
    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz p1, :cond_5

    .line 1259
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset(Z)V

    .line 1262
    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1263
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$sYh4eC33epC-mbZ5fujk1nuROqs;

    invoke-direct {v1, v0}, Lcom/android/launcher3/-$$Lambda$sYh4eC33epC-mbZ5fujk1nuROqs;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1267
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    .line 1268
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1269
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 1272
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p1, :cond_8

    .line 1273
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent()V

    .line 1277
    :cond_8
    return-void
.end method

.method public final onPageBoundSynchronously(I)V
    .locals 0

    .line 2099
    iput p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPage:I

    .line 2100
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 799
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue(I)V

    .line 801
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onPause()V

    .line 802
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 803
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    .line 805
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onPause()V

    .line 808
    :cond_0
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 6

    .line 2324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    const/16 v2, 0x1000

    if-eqz v1, :cond_0

    .line 2326
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f0c0039

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2330
    new-instance v3, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->getActionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 2331
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    const v4, 0x7f0c0029

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ItemInfo;

    if-eqz v3, :cond_2

    .line 2335
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2336
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f0c0088

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2339
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2340
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f0c0028

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2343
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2344
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 642
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 643
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 644
    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 645
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 647
    nop

    .line 648
    iget-wide v0, p2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget-wide v2, p2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_0

    .line 650
    iget v1, p2, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v2, p2, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object p2

    .line 654
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget p3, p3, v2

    if-nez p3, :cond_1

    .line 656
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    return-void

    .line 659
    :cond_1
    const p1, 0x7f0c0047

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const p3, 0x7f0c0013

    .line 660
    invoke-virtual {p0, p3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 660
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 663
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1282
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1283
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPage:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 1284
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 773
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onResume()V

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedSessionMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V

    .line 781
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->showIfNeeded(Lcom/android/launcher3/Launcher;)V

    .line 788
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onResume()V

    .line 791
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrResumeChanged(Lcom/android/launcher3/Launcher;)V

    .line 793
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1289
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1292
    :cond_0
    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1295
    const/16 v0, 0x10

    .line 1296
    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/BaseDraggingActivity;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 1297
    if-eqz v0, :cond_1

    .line 1298
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1299
    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1300
    const-string v0, "launcher.widget_panel"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1301
    goto :goto_0

    .line 1302
    :cond_1
    const-string v0, "launcher.widget_panel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1307
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 1309
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_2

    .line 1310
    const-string v0, "launcher.request_args"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1312
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_3

    .line 1313
    const-string v0, "launcher.activity_result"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1316
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1318
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 741
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStart()V

    .line 742
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 744
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->onStart()V

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->setListenIfResumed(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 750
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 755
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 763
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 764
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 765
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 767
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    .line 768
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onStart(Landroid/content/Context;)V

    .line 769
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected onStop()V
    .locals 4

    .line 722
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStop()V

    .line 723
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 725
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->onStop()V

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->setListenIfResumed(Z)V

    .line 730
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    .line 732
    iget-object v2, v2, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v2, v2, Lcom/android/launcher3/LauncherState;->containerType:I

    const/4 v3, -0x1

    .line 731
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(III)V

    .line 734
    :cond_1
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener()V

    .line 735
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v1}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->disableRestore:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager;->getRestState()Lcom/android/launcher3/LauncherState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 737
    :cond_3
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1703
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onTrimMemory(I)V

    .line 1704
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 1707
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 1712
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/UiFactory;->onTrimMemory(Landroid/content/Context;I)V

    .line 1716
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 812
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onUserLeaveHint()V

    .line 813
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrResumeChanged(Lcom/android/launcher3/Launcher;)V

    .line 814
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 818
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onWindowFocusChanged(Z)V

    .line 819
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/android/launcher3/Launcher;)V

    .line 820
    return-void
.end method

.method public final rebindModel()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 381
    :cond_0
    return-void
.end method

.method public final refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 2

    .line 2265
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/LauncherModel$7;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/LauncherModel$7;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 2266
    return-void
.end method

.method public final removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z
    .locals 4

    .line 1547
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1549
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 1550
    instance-of v2, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_0

    .line 1551
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/FolderInfo;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_0

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 1555
    :goto_0
    if-eqz p3, :cond_1

    .line 1556
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 1558
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_5

    .line 1559
    check-cast p2, Lcom/android/launcher3/FolderInfo;

    .line 1560
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3

    .line 1561
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 1563
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 1564
    if-eqz p3, :cond_4

    .line 1565
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/FolderInfo;)V

    .line 1567
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 1568
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1569
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 1570
    if-eqz p3, :cond_6

    .line 1571
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1573
    :cond_6
    nop

    .line 1576
    :goto_1
    return v1

    .line 1574
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 423
    const/4 p1, 0x1

    return p1
.end method

.method public final setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$OnResumeCallback;->onLauncherResume()V

    .line 1735
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

    .line 1736
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 1369
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1370
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 0

    .line 1667
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    .line 1668
    iget-boolean p2, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p2, :cond_0

    .line 1673
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    .line 1674
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1675
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V

    .line 1677
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    return p1
.end method

.method public final startBinding()V
    .locals 4

    .line 1768
    const/4 v0, 0x1

    const/16 v1, 0x18f

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/BaseDraggingActivity;ZI)V

    .line 1775
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 1778
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/Workspace$15;

    invoke-direct {v2, v1}, Lcom/android/launcher3/Workspace$15;-><init>(Lcom/android/launcher3/Workspace;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 1779
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const v2, 0x7f0e0013

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    iget-object v3, v1, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    iget-object v2, v1, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1780
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->clearViews()V

    .line 1782
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_2

    .line 1783
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iget-object v3, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    iput-boolean v2, v1, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    iget-object v3, v1, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget v2, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    return-void

    :cond_1
    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget v2, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 1785
    :cond_2
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 1376
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/BaseDraggingActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    return-void

    .line 1378
    :catch_0
    move-exception p1

    .line 1379
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 1390
    if-nez p3, :cond_0

    .line 1391
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1392
    const-string p4, "source"

    const-string v0, "launcher-search"

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :cond_0
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 1396
    invoke-interface {p4, p1}, Lcom/android/launcher3/LauncherCallbacks;->startSearch$4aa4b603(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1398
    :cond_1
    const/4 p4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseDraggingActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1402
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1403
    return-void
.end method

.method public final updateIconBadges(Ljava/util/Set;)V
    .locals 4

    .line 1123
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/android/launcher3/Workspace$18;

    invoke-direct {v3, v0, v1, p1, v2}, Lcom/android/launcher3/Workspace$18;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/Set;Ljava/util/HashSet;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    new-instance v1, Lcom/android/launcher3/Workspace$19;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/Workspace$19;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 1124
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateIconBadges(Ljava/util/Set;)V

    .line 1126
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_0

    .line 1128
    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 1130
    :cond_0
    return-void
.end method
