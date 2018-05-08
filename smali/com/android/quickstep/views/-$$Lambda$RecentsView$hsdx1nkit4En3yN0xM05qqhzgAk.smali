.class public final synthetic Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/RecentsAnimationInterpolator;

.field private final synthetic f$1:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationInterpolator;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;->f$0:Lcom/android/quickstep/RecentsAnimationInterpolator;

    iput-object p2, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;->f$1:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;->f$0:Lcom/android/quickstep/RecentsAnimationInterpolator;

    iget-object v1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;->f$1:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskLauncherAnimation$6(Lcom/android/quickstep/RecentsAnimationInterpolator;Lcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
