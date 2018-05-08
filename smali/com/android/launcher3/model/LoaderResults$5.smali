.class Lcom/android/launcher3/model/LoaderResults$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$currentScreen:I

.field final synthetic val$deferredExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;ILjava/util/concurrent/Executor;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$5;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput p2, p0, Lcom/android/launcher3/model/LoaderResults$5;->val$currentScreen:I

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderResults$5;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$5;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 194
    if-eqz v0, :cond_1

    .line 198
    iget v1, p0, Lcom/android/launcher3/model/LoaderResults$5;->val$currentScreen:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_0

    .line 199
    iget v1, p0, Lcom/android/launcher3/model/LoaderResults$5;->val$currentScreen:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$5;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 203
    :cond_1
    return-void
.end method
