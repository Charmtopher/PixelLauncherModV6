.class Lcom/android/launcher3/views/AbstractSlideInView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    iget-object p1, p1, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 84
    return-void
.end method
