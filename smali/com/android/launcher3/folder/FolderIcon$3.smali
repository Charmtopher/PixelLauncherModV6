.class Lcom/android/launcher3/folder/FolderIcon$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;

.field final synthetic val$finalIndex:I

.field final synthetic val$item:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$finalIndex:I

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$item:Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderIcon;->access$100(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$finalIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$item:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 364
    return-void
.end method
