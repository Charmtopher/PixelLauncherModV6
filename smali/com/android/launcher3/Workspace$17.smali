.class Lcom/android/launcher3/Workspace$17;
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

    .line 3225
    iput-object p1, p0, Lcom/android/launcher3/Workspace$17;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$17;->val$folderIds:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 3

    .line 3228
    instance-of p2, p1, Lcom/android/launcher3/FolderInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/Workspace$17;->val$folderIds:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3229
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/FolderInfo;->itemsChanged(Z)V

    .line 3232
    :cond_0
    return v0
.end method
