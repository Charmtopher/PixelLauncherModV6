.class public Lcom/android/launcher3/DeleteDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public final completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 88
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 89
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of p1, p1, Lcom/android/launcher3/folder/Folder;

    if-eqz p1, :cond_1

    .line 90
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/DeleteDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 92
    :cond_1
    return-void
.end method

.method public final getAccessibilityAction()I
    .locals 1

    .line 66
    const v0, 0x7f0e0008

    return v0
.end method

.method public final getControlTypeForLogging()I
    .locals 1

    .line 110
    const/4 v0, 0x5

    return v0
.end method

.method public final onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z

    .line 103
    iget-object p1, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 104
    iget-object p1, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0c0076

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 51
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object p2, p0, Lcom/android/launcher3/DeleteDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const p1, 0x7f0c003d

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1040000

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DeleteDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->requestLayout()V

    .line 52
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 43
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mHoverColor:I

    .line 45
    const v0, 0x7f02003a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setDrawable(I)V

    .line 46
    return-void
.end method

.method public final supportsAccessibilityDrop(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 59
    instance-of p2, p1, Lcom/android/launcher3/ShortcutInfo;

    if-nez p2, :cond_1

    instance-of p2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez p2, :cond_1

    instance-of p1, p1, Lcom/android/launcher3/FolderInfo;

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

.method protected final supportsDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 0

    .line 71
    const/4 p1, 0x1

    return p1
.end method
