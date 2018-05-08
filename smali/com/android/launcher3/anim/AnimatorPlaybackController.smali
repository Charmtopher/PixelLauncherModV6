.class public abstract Lcom/android/launcher3/anim/AnimatorPlaybackController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected final mAnim:Landroid/animation/AnimatorSet;

.field public final mAnimationPlayer:Landroid/animation/ValueAnimator;

.field protected mCurrentFraction:F

.field private final mDuration:J

.field public mEndAction:Ljava/lang/Runnable;

.field public mOriginalTarget:Landroid/animation/AnimatorSet;


# direct methods
.method protected constructor <init>(Landroid/animation/AnimatorSet;J)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    .line 62
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mOriginalTarget:Landroid/animation/AnimatorSet;

    .line 63
    iput-wide p2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mDuration:J

    .line 65
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/launcher3/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private dispatchOnStartRecursively(Landroid/animation/Animator;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 163
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 164
    goto :goto_0

    .line 166
    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 168
    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStartRecursively(Landroid/animation/Animator;)V

    .line 169
    goto :goto_1

    .line 171
    :cond_1
    return-void
.end method

.method private static nonNullList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    .line 245
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 48
    new-instance v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;-><init>(Landroid/animation/AnimatorSet;JB)V

    return-object v0
.end method


# virtual methods
.method protected final clampDuration(F)J
    .locals 4

    .line 149
    iget-wide v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    .line 150
    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 151
    const-wide/16 v0, 0x0

    return-wide v0

    .line 153
    :cond_0
    float-to-long v0, v0

    iget-wide v2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mDuration:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final dispatchOnStart()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStartRecursively(Landroid/animation/Animator;)V

    .line 159
    return-void
.end method

.method public final getProgressFraction()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    return v0
.end method

.method public final getTarget()Landroid/animation/AnimatorSet;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 146
    return-void
.end method

.method public abstract setPlayFraction(F)V
.end method

.method public final start()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    return-void
.end method
