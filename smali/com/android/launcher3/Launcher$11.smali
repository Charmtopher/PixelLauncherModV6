.class Lcom/android/launcher3/Launcher$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$newScreenIndex:I

.field final synthetic val$startBounceAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V
    .locals 0

    .line 1934
    iput-object p1, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$11;->val$newScreenIndex:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$11;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1936
    iget-object v0, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;Z)V

    .line 1939
    iget-object v0, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/Launcher$11;->val$newScreenIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 1940
    iget-object v0, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$11;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1943
    :cond_0
    return-void
.end method
