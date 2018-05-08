.class Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 1

    .line 1430
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1431
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 1432
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 1437
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 1438
    return-void
.end method
