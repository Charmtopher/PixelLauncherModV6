.class public Lcom/android/launcher3/touch/ItemLongClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

.field public static INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/launcher3/touch/-$$Lambda$ItemLongClickListener$n_ku6Bnp7SQn-CFIT2R46R_RyW8;->INSTANCE:Lcom/android/launcher3/touch/-$$Lambda$ItemLongClickListener$n_ku6Bnp7SQn-CFIT2R46R_RyW8;

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    .line 46
    sget-object v0, Lcom/android/launcher3/touch/-$$Lambda$ItemLongClickListener$pr3KEnHIBNhjVshSoZRttm8yUa8;->INSTANCE:Lcom/android/launcher3/touch/-$$Lambda$ItemLongClickListener$pr3KEnHIBNhjVshSoZRttm8yUa8;

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4

    .line 62
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    .line 69
    return-void

    .line 74
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 75
    iget-object p0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object p1, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p3, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v0, Lcom/android/launcher3/Workspace$6;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p0, v1}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_2
    invoke-virtual {p0, p1, p0, p3}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 76
    return-void
.end method

.method public static canStartDrag(Lcom/android/launcher3/Launcher;)Z
    .locals 2

    .line 108
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 109
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 117
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$n_ku6Bnp7SQn-CFIT2R46R_RyW8(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onWorkspaceItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pr3KEnHIBNhjVshSoZRttm8yUa8(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static onAllAppsItemLongClick(Landroid/view/View;)Z
    .locals 5

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 82
    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v1, v1, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v1, :cond_2

    return v2

    .line 86
    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 87
    new-instance v3, Lcom/android/launcher3/touch/ItemLongClickListener$1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/touch/ItemLongClickListener$1;-><init>(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 101
    new-instance v3, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v3}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 102
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v4, v4

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, v3, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    .line 103
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1, p0, v0, v3}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 104
    return v2
.end method

.method private static onWorkspaceItemLongClick(Landroid/view/View;)Z
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 52
    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ItemInfo;

    if-nez v1, :cond_2

    return v2

    .line 55
    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 57
    const/4 p0, 0x1

    return p0
.end method
