.class Lcom/android/launcher3/model/LoaderResults$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$chunkSize:I

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;II)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$8;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$workspaceItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$start:I

    iput p4, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$8;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 308
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$start:I

    iget v3, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$start:I

    iget v4, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    .line 311
    :cond_0
    return-void
.end method
