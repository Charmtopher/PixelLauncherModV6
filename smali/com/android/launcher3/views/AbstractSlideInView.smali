.class public abstract Lcom/android/launcher3/views/AbstractSlideInView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SwipeDetector$Listener;


# static fields
.field public static TRANSLATION_SHIFT:Landroid/util/Property;


# instance fields
.field public mContent:Landroid/view/View;

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field public mNoIntercept:Z

.field public final mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected final mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

.field public mTranslationShift:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationShift"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/AbstractSlideInView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 74
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 76
    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    new-instance p2, Lcom/android/launcher3/touch/SwipeDetector;

    sget-object p3, Lcom/android/launcher3/touch/SwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher3/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    .line 79
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/launcher3/views/AbstractSlideInView$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/AbstractSlideInView$2;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final handleClose(ZJ)V
    .locals 5

    .line 151
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 155
    return-void

    .line 157
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 161
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    .line 160
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 162
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/AbstractSlideInView$3;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/SwipeDetector;->isIdleState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 171
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 176
    return-void

    .line 158
    :cond_3
    :goto_1
    return-void
.end method

.method public onCloseComplete()V
    .locals 1

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    return v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 105
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    return v1

    .line 105
    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->close(Z)V

    .line 117
    :cond_0
    return v1
.end method

.method public onDrag(FF)Z
    .locals 1

    .line 127
    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 128
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 129
    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 130
    const/4 p1, 0x1

    return p1
.end method

.method public onDragEnd(FZ)V
    .locals 5

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    cmpl-float p2, p1, v0

    if-gtz p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v2

    if-lez p2, :cond_2

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->close(Z)V

    return-void

    .line 141
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 143
    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 144
    invoke-static {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 145
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 148
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .line 123
    return-void
.end method

.method public setTranslationShift(F)V
    .locals 2

    .line 89
    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 90
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 91
    return-void
.end method
