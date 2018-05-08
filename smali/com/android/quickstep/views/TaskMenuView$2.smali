.class Lcom/android/quickstep/views/TaskMenuView$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskMenuView;

.field final synthetic val$closing:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskMenuView;Z)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    iput-boolean p2, p0, Lcom/android/quickstep/views/TaskMenuView$2;->val$closing:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskMenuView;->setVisibility(I)V

    .line 197
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 201
    iget-boolean p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->val$closing:Z

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-static {p1}, Lcom/android/quickstep/views/TaskMenuView;->access$000(Lcom/android/quickstep/views/TaskMenuView;)V

    .line 204
    :cond_0
    return-void
.end method
