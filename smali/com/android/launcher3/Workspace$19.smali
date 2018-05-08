.class Lcom/android/launcher3/Workspace$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$folderIds:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .locals 0

    .line 3256
    iput-object p1, p0, Lcom/android/launcher3/Workspace$19;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$19;->val$folderIds:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 3

    .line 3259
    instance-of v0, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$19;->val$folderIds:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1

    .line 3261
    new-instance v0, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    .line 3262
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 3263
    iget-object v2, p0, Lcom/android/launcher3/Workspace$19;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    .line 3264
    goto :goto_0

    .line 3265
    :cond_0
    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p2, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result p1

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    iput-object v0, p2, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 3268
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
