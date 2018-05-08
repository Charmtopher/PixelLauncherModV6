.class public abstract Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final ALPHA:Landroid/util/Property;

.field private static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field public static final SHIFT:Landroid/util/Property;

.field private static final sTempRect1:Landroid/graphics/Rect;

.field private static final sTempRect2:Landroid/graphics/Rect;


# instance fields
.field private mAlpha:F

.field private final mContainer:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mCurrentView:Landroid/view/View;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mIsDirty:Z

.field private mLastFocusedView:Landroid/view/View;

.field private final mMaxAlpha:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mShift:F

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    .line 58
    new-instance v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$2;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "shift"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->SHIFT:Landroid/util/Property;

    .line 73
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect1:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect2:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mIsDirty:Z

    .line 98
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mContainer:Landroid/view/View;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 102
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mMaxAlpha:I

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->setAlpha(F)V

    .line 106
    iput p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mShift:F

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mShift:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mShift:F

    return p1
.end method

.method private getDrawRect()Landroid/graphics/Rect;
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect1:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 146
    iget v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mTargetView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 148
    sget-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mShift:F

    sget-object v2, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect1:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->sTempRect1:Landroid/graphics/Rect;

    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 132
    iget v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mIsDirty:Z

    .line 140
    :cond_0
    return-void
.end method

.method protected final endCurrentAnimation()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 201
    :cond_0
    return-void
.end method

.method protected final invalidateDirty()V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mIsDirty:Z

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 129
    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->invalidateDirty()V

    .line 117
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->endCurrentAnimation()V

    .line 161
    iget v3, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mAlpha:F

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    .line 162
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mTargetView:Landroid/view/View;

    .line 164
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    aput v4, v6, v2

    .line 165
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v2

    sget-object v5, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->SHIFT:Landroid/util/Property;

    new-array v6, v1, [F

    aput v4, v6, v2

    .line 166
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v1

    .line 164
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v2, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;-><init>(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->setCurrentView(Landroid/view/View;)V

    .line 171
    new-array v3, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v4, v1, v2

    .line 172
    invoke-static {v5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v2

    .line 171
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 175
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mLastFocusedView:Landroid/view/View;

    goto :goto_1

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mLastFocusedView:Landroid/view/View;

    if-ne v3, p1, :cond_2

    .line 178
    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mLastFocusedView:Landroid/view/View;

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->endCurrentAnimation()V

    .line 180
    new-array v3, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v5, v1, v2

    .line 181
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v2

    .line 180
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$ViewSetListener;-><init>(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 187
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->invalidateDirty()V

    .line 189
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mLastFocusedView:Landroid/view/View;

    .line 190
    iget-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    .line 191
    iget-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 194
    :cond_4
    return-void
.end method

.method protected final setAlpha(F)V
    .locals 2

    .line 110
    iput p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mAlpha:F

    .line 111
    iget-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mAlpha:F

    iget v1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mMaxAlpha:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    return-void
.end method

.method protected final setCurrentView(Landroid/view/View;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mCurrentView:Landroid/view/View;

    .line 205
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mShift:F

    .line 206
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->mTargetView:Landroid/view/View;

    .line 207
    return-void
.end method

.method public abstract viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
.end method
