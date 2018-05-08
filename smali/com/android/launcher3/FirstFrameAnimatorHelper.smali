.class public Lcom/android/launcher3/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private final mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 52
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    return-void
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2

    .line 72
    sget-object v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 76
    :cond_0
    sget-object v0, Lcom/android/launcher3/-$$Lambda$FirstFrameAnimatorHelper$Rt9GS5WQ2aT33ZHWNuz2uhuk63s;->INSTANCE:Lcom/android/launcher3/-$$Lambda$FirstFrameAnimatorHelper$Rt9GS5WQ2aT33ZHWNuz2uhuk63s;

    sput-object v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 78
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sVisible:Z

    .line 79
    return-void
.end method

.method static synthetic lambda$initializeDrawListener$0()V
    .locals 4

    .line 76
    sget-wide v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    return-void
.end method

.method public static setIsVisible(Z)V
    .locals 0

    .line 68
    sput-boolean p0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sVisible:Z

    .line 69
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 62
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 63
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 65
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    .line 82
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    iget-wide v4, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 84
    sget-wide v4, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v4, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 85
    iput-wide v2, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    .line 88
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 89
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_1

    .line 91
    move v6, v8

    goto :goto_0

    .line 89
    :cond_1
    nop

    .line 91
    const/4 v6, 0x0

    :goto_0
    iget-boolean v9, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v9, :cond_5

    sget-boolean v9, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v9, :cond_5

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_5

    if-nez v6, :cond_5

    .line 97
    iput-boolean v8, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 98
    sget-wide v9, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v11, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v9, v11

    .line 102
    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    const-wide/16 v13, 0x3e8

    if-nez v6, :cond_2

    iget-wide v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    add-long/2addr v7, v13

    cmp-long v6, v2, v7

    if-gez v6, :cond_2

    cmp-long v6, v4, v11

    if-lez v6, :cond_2

    .line 105
    iget-object v2, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 106
    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 110
    :cond_2
    const-wide/16 v6, 0x1

    cmp-long v6, v9, v6

    if-nez v6, :cond_3

    iget-wide v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    add-long/2addr v7, v13

    cmp-long v7, v2, v7

    if-gez v7, :cond_3

    iget-boolean v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v7, :cond_3

    iget-wide v7, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v9, 0x10

    add-long/2addr v7, v9

    cmp-long v2, v2, v7

    if-lez v2, :cond_3

    cmp-long v2, v4, v9

    if-lez v2, :cond_3

    .line 114
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    goto :goto_1

    .line 117
    :cond_3
    if-lez v6, :cond_4

    .line 118
    iget-object v2, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v3, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;-><init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_4
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 130
    :cond_5
    return-void
.end method
