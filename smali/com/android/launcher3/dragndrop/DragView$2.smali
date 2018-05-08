.class Lcom/android/launcher3/dragndrop/DragView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView;->access$000(Lcom/android/launcher3/dragndrop/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragView;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 172
    :cond_0
    return-void
.end method
