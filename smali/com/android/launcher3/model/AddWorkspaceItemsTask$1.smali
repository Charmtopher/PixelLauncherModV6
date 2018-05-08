.class Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/AddWorkspaceItemsTask;

.field final synthetic val$addedItemsFinal:Ljava/util/ArrayList;

.field final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->this$0:Lcom/android/launcher3/model/AddWorkspaceItemsTask;

    iput-object p2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 8

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 129
    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 130
    iget-object v4, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    .line 131
    iget-wide v6, v5, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    .line 132
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    invoke-interface {p1, v2, v1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 140
    return-void
.end method
