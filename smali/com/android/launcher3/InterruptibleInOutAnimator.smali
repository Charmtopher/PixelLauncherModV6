.class public Lcom/android/launcher3/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAnimator:Landroid/animation/ValueAnimator;

.field mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JFF)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 51
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v1

    aput p4, v2, v0

    invoke-static {v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 52
    iput-wide p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    .line 53
    iput p3, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 54
    iput p4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 56
    iget-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/InterruptibleInOutAnimator$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/InterruptibleInOutAnimator$1;-><init>(Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method final animate(I)V
    .locals 10

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 66
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v3, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 67
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_1

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 71
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 75
    iput p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 78
    iget-wide v6, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long/2addr v6, v0

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    iget-wide v8, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    iget-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v4, v0, v5

    aput v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 82
    iget-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    iput-boolean v5, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 84
    return-void
.end method
