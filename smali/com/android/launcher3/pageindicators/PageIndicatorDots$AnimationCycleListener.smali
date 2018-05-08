.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 330
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;B)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 334
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    .line 335
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 339
    iget-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    if-nez p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->access$602(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 341
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->access$700(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->access$800(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V

    .line 343
    :cond_0
    return-void
.end method
