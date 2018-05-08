.class public final synthetic Lcom/android/quickstep/views/-$$Lambda$RecentsView$O8Draeq9XtDwd0zxi6MdnjpVeKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$O8Draeq9XtDwd0zxi6MdnjpVeKc;->f$0:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$O8Draeq9XtDwd0zxi6MdnjpVeKc;->f$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskDismissAnimation$3(Lcom/android/quickstep/views/RecentsView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
