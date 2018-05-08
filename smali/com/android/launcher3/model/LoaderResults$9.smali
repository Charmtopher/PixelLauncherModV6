.class Lcom/android/launcher3/model/LoaderResults$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$widget:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$9;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults$9;->val$widget:Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$9;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$9;->val$widget:Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    .line 326
    :cond_0
    return-void
.end method
