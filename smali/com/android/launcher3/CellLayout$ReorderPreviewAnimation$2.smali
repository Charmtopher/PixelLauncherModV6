.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .locals 0

    .line 2004
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 2007
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValues(Z)V

    .line 2008
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2009
    return-void
.end method
