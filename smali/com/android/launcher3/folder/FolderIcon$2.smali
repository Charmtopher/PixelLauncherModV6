.class Lcom/android/launcher3/folder/FolderIcon$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->beginExternalDrag()V

    .line 246
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 247
    return-void
.end method
