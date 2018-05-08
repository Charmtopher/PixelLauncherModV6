.class Lcom/android/launcher3/util/FlingAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/FlingAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/FlingAnimation;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/FlingAnimation;->access$000(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/FlingAnimation;->access$100(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation$2;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    iget-object v1, v1, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 102
    return-void
.end method
