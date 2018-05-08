.class Lcom/android/launcher3/notification/NotificationMainView$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationMainView;

.field final synthetic val$willExit:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationMainView;Z)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView$2;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    iput-boolean p2, p0, Lcom/android/launcher3/notification/NotificationMainView$2;->val$willExit:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView$2;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationMainView;->access$100(Lcom/android/launcher3/notification/NotificationMainView;)Lcom/android/launcher3/touch/SwipeDetector;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 216
    iget-boolean p1, p0, Lcom/android/launcher3/notification/NotificationMainView$2;->val$willExit:Z

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView$2;->this$0:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationMainView;->onChildDismissed()V

    .line 219
    :cond_0
    return-void
.end method
