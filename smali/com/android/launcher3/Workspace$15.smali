.class Lcom/android/launcher3/Workspace$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 3089
    iput-object p1, p0, Lcom/android/launcher3/Workspace$15;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 3092
    instance-of p1, p2, Lcom/android/launcher3/DropTarget;

    if-eqz p1, :cond_0

    .line 3093
    iget-object p1, p0, Lcom/android/launcher3/Workspace$15;->this$0:Lcom/android/launcher3/Workspace;

    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p2, Lcom/android/launcher3/DropTarget;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 3096
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
