.class Lcom/android/launcher3/FirstFrameAnimatorHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field final synthetic val$animation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    iput-object p2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;->val$animation:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;->val$animation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    return-void
.end method
