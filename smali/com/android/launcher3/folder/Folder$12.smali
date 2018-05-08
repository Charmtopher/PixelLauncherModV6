.class Lcom/android/launcher3/folder/Folder$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1059
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1060
    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 1061
    const/4 v2, 0x0

    .line 1063
    if-ne v0, v1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1068
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 1069
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 1070
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v5, v0, Lcom/android/launcher3/FolderInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v7, v0, Lcom/android/launcher3/FolderInfo;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v9, v0, Lcom/android/launcher3/FolderInfo;->cellX:I

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget v10, v0, Lcom/android/launcher3/FolderInfo;->cellY:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z

    .line 1076
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1080
    :cond_1
    if-eqz v2, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$12;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1087
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1090
    :cond_2
    return-void
.end method
