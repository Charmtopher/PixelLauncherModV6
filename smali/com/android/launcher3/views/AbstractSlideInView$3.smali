.class Lcom/android/launcher3/views/AbstractSlideInView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-virtual {p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 166
    return-void
.end method
