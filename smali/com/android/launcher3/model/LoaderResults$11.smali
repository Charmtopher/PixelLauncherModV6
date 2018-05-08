.class Lcom/android/launcher3/model/LoaderResults$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$11;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults$11;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$11;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 357
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$11;->val$list:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 360
    :cond_0
    return-void
.end method
