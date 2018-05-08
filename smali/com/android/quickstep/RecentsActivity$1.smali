.class Lcom/android/quickstep/RecentsActivity$1;
.super Lcom/android/launcher3/LauncherAnimationRunner;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsActivity;

.field final synthetic val$taskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsActivity;Landroid/os/Handler;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    iput-object p3, p0, Lcom/android/quickstep/RecentsActivity$1;->val$taskView:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity$1;->val$taskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/RecentsActivity;->access$000(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
