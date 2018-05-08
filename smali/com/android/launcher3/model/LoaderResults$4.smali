.class Lcom/android/launcher3/model/LoaderResults$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$4;->this$0:Lcom/android/launcher3/model/LoaderResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$4;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->finishBindingItems()V

    .line 186
    :cond_0
    return-void
.end method
