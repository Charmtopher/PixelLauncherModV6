.class Lcom/android/launcher3/folder/Folder$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Ljava/lang/Runnable;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 533
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 535
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 536
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 537
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    .line 523
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->setBackgroundVisible(Z)V

    .line 524
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-boolean v0, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    iget-object v2, p1, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v5, p1, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Lcom/android/launcher3/Launcher;Landroid/view/View;II)V

    iget-object v3, p1, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v2, v3, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iget-object v2, p1, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v1, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 529
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0050

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    iget v2, v2, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {p1, v1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 530
    return-void
.end method
