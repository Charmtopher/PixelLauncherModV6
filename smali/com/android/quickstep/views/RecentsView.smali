.class public abstract Lcom/android/quickstep/views/RecentsView;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# static fields
.field public static final ADJACENT_SCALE:Landroid/util/FloatProperty;

.field public static final CONTENT_ALPHA:Landroid/util/FloatProperty;

.field private static final DISMISS_TASK_DURATION:I = 0x12c

.field private static final FLIP_RECENTS:Z = true


# instance fields
.field public final mActivity:Lcom/android/launcher3/BaseActivity;

.field private mAdjacentScale:F

.field private mContentAlpha:F

.field private final mEmptyIcon:Landroid/graphics/drawable/Drawable;

.field private final mEmptyMessage:Ljava/lang/CharSequence;

.field private final mEmptyMessagePadding:I

.field private final mEmptyMessagePaint:Landroid/text/TextPaint;

.field private mEmptyTextLayout:Landroid/text/Layout;

.field private final mFastFlingVelocity:F

.field private mFirstTaskIconScaledDown:Z

.field private final mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

.field private mIgnoreResetTaskViews:Landroid/util/ArraySet;

.field private final mLastMeasureSize:Landroid/graphics/Point;

.field private mLoadPlanId:I

.field private final mModel:Lcom/android/quickstep/RecentsModel;

.field private mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mNextPageSwitchRunnable:Ljava/lang/Runnable;

.field private mOverviewStateEnabled:Z

.field private mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

.field private final mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

.field private mRunningTaskId:I

.field private final mScrollState:Lcom/android/quickstep/views/RecentsView$ScrollState;

.field private mShowEmptyMessage:Z

.field private mSwipeDownShouldLaunchApp:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTaskStackListenerRegistered:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTmpRunningTask:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/android/quickstep/views/RecentsView$1;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    .line 103
    new-instance v0, Lcom/android/quickstep/views/RecentsView$2;

    const-string v1, "adjacentScale"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->ADJACENT_SCALE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 123
    new-instance p2, Lcom/android/quickstep/views/RecentsView$ScrollState;

    invoke-direct {p2}, Lcom/android/quickstep/views/RecentsView$ScrollState;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mScrollState:Lcom/android/quickstep/views/RecentsView$ScrollState;

    .line 125
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    .line 130
    new-instance p2, Lcom/android/quickstep/views/RecentsView$3;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/RecentsView$3;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 157
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanId:I

    .line 160
    iput p2, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    .line 163
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->mFirstTaskIconScaledDown:Z

    .line 172
    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    .line 174
    iput p3, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    .line 178
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskViews:Landroid/util/ArraySet;

    .line 184
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    .line 189
    new-instance p3, Lcom/android/quickstep/views/-$$Lambda$RecentsView$cuqrsa-tyQadsC84Z2h0Rmwf57k;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$cuqrsa-tyQadsC84Z2h0Rmwf57k;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    .line 199
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b00a3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/quickstep/views/RecentsView;->setPageSpacing(I)V

    .line 200
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/quickstep/views/RecentsView;->enableFreeScroll(Z)V

    .line 201
    invoke-virtual {p0, p3}, Lcom/android/quickstep/views/RecentsView;->setClipToOutline(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    .line 205
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 206
    new-instance v0, Lcom/android/quickstep/QuickScrubController;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/quickstep/QuickScrubController;-><init>(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    .line 207
    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    .line 209
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    .line 211
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    xor-int/2addr p3, v0

    iput-boolean p3, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    .line 213
    iget-boolean p3, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    invoke-virtual {p0, p3}, Lcom/android/quickstep/views/RecentsView;->setLayoutDirection(I)V

    .line 215
    const p3, 0x7f020031

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    const p3, 0x7f0c009c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    .line 218
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    .line 219
    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 220
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b00a9

    .line 221
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 220
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 222
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b00aa

    .line 223
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    .line 224
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->setWillNotDraw(Z)V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    return p0
.end method

.method private static addAnim(Landroid/animation/ObjectAnimator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 753
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 754
    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 755
    return-void
.end method

.method private applyIconScale(Z)V
    .locals 2

    .line 601
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstTaskIconScaledDown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 602
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 603
    if-eqz v1, :cond_2

    .line 604
    if-eqz p1, :cond_1

    .line 605
    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/TaskView;->animateIconToScale(F)V

    return-void

    .line 607
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/TaskView;->setIconScale(F)V

    .line 610
    :cond_2
    return-void
.end method

.method private applyLoadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    new-instance v1, Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$AenGcjDqD14z7boU9lHV0QeB4c8;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 322
    return-void

    .line 324
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 325
    :goto_0
    if-nez p1, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->removeAllViews()V

    .line 327
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onTaskStackUpdated()V

    .line 328
    return-void

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 339
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    if-ge v3, p1, :cond_3

    .line 340
    const v5, 0x7f040038

    invoke-virtual {v1, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/views/TaskView;

    .line 341
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;)V

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 343
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-le v1, p1, :cond_4

    .line 344
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 346
    goto :goto_2

    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->unloadVisibleTaskData()V

    .line 352
    add-int/lit8 v1, p1, -0x1

    :goto_3
    if-ltz v1, :cond_5

    .line 353
    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    .line 354
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 355
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    .line 356
    invoke-virtual {v3, v5}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 352
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 359
    invoke-direct {p0, v4}, Lcom/android/quickstep/views/RecentsView;->applyIconScale(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result p1

    if-eq v0, p1, :cond_6

    .line 362
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    invoke-virtual {p1}, Lcom/android/quickstep/QuickScrubController;->snapToNextTaskIfAvailable()V

    .line 364
    :cond_6
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onTaskStackUpdated()V

    .line 365
    return-void
.end method

.method private createAnimForChild(Landroid/view/View;[F)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 999
    new-instance v0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 1001
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/4 v2, 0x0

    aget v2, p2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p2, v1

    .line 1002
    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget p2, p2, v1

    .line 1003
    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p2

    .line 1004
    invoke-virtual {p2}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 999
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private getAdjacentScaleAndTranslation(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;FF)[F
    .locals 1

    .line 870
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getCurveScale()F

    move-result p1

    sub-float p1, p3, p1

    mul-float/2addr v0, p1

    .line 871
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 872
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getCurveScale()F

    move-result p2

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    aput p3, p1, p2

    .line 873
    iget-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz p2, :cond_0

    neg-float v0, v0

    :cond_0
    const/4 p2, 0x1

    aput v0, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    .line 871
    return-object p1
.end method

.method public static synthetic lambda$applyLoadPlan$1(Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/launcher3/util/PendingAnimation$OnEndListener;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V

    return-void
.end method

.method static synthetic lambda$createTaskDismissAnimation$2(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .locals 2

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$createTaskDismissAnimation$3(Lcom/android/quickstep/views/RecentsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 713
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    return-void
.end method

.method public static synthetic lambda$createTaskDismissAnimation$4(Lcom/android/quickstep/views/RecentsView;ZLcom/android/quickstep/views/TaskView;ILcom/android/launcher3/util/PendingAnimation$OnEndListener;)V
    .locals 2

    .line 724
    iget-boolean v0, p4, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_3

    .line 725
    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    .line 727
    if-eqz p1, :cond_0

    .line 728
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    .line 729
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget p4, p4, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;->logAction:I

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 731
    invoke-static {p1}, Lcom/android/quickstep/TaskUtils;->getComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p1

    .line 729
    invoke-virtual {v0, p4, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V

    .line 734
    :cond_0
    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    .line 735
    if-ge p3, p1, :cond_1

    .line 736
    add-int/lit8 p1, p1, -0x1

    .line 738
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 739
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result p2

    if-nez p2, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onAllTasksRemoved()V

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->snapToPageImmediately(I)Z

    .line 745
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 746
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 747
    return-void
.end method

.method static synthetic lambda$createTaskLauncherAnimation$6(Lcom/android/quickstep/RecentsAnimationInterpolator;Lcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1021
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    .line 1022
    invoke-virtual {p0, p2}, Lcom/android/quickstep/RecentsAnimationInterpolator;->interpolate(F)Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    move-result-object p0

    .line 1023
    iget p2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 1024
    iget p2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 1025
    iget p2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskX:F

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskView;->setTranslationX(F)V

    .line 1026
    iget p0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskY:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/TaskView;->setTranslationY(F)V

    .line 1027
    return-void
.end method

.method public static synthetic lambda$createTaskLauncherAnimation$7(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/PendingAnimation$OnEndListener;)V
    .locals 2

    .line 1033
    iget-boolean v0, p2, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Z)V

    .line 1035
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget p2, p2, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;->logAction:I

    const/4 v1, 0x2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 1039
    invoke-static {p1}, Lcom/android/quickstep/TaskUtils;->getComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p1

    .line 1037
    invoke-virtual {v0, p2, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V

    .line 1041
    :cond_0
    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 1044
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 1045
    return-void
.end method

.method static synthetic lambda$dismissTask$5(Lcom/android/launcher3/util/PendingAnimation;)V
    .locals 2

    .line 780
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/PendingAnimation;->finish(ZI)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/quickstep/views/RecentsView;Z)V
    .locals 0

    .line 191
    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    .line 195
    :cond_0
    return-void
.end method

.method public static synthetic lambda$w02bBzSWizaR4dIzSj9kQ73I7BA(Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V

    return-void
.end method

.method private snapToPageRelative(I)V
    .locals 2

    .line 758
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 759
    return-void

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result p1

    rem-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    .line 762
    return-void
.end method

.method private unloadVisibleTaskData()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getRecentsTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 498
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskView(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    .line 502
    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 503
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->onTaskInvisible(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 507
    return-void
.end method

.method private updateEmptyStateUi(Z)V
    .locals 4

    .line 910
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 911
    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 912
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    .line 915
    :cond_1
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-nez p1, :cond_2

    .line 916
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V

    .line 917
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    sub-int/2addr p1, v0

    .line 918
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 920
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 921
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    .line 922
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 923
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 925
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 926
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 927
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 928
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 927
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    :cond_2
    return-void
.end method

.method private updateTaskStackListenerState()V
    .locals 3

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isRecentsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListenerRegistered:Z

    if-eq v0, v1, :cond_2

    .line 386
    if-eqz v0, :cond_1

    .line 387
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 388
    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    goto :goto_1

    .line 391
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 394
    :goto_1
    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListenerRegistered:Z

    .line 396
    :cond_2
    return-void
.end method


# virtual methods
.method public addIgnoreResetTask(Lcom/android/quickstep/views/TaskView;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .line 414
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    move-result v0

    .line 415
    nop

    .line 416
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    .line 417
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mTouchState:I

    if-ne v3, v1, :cond_3

    .line 418
    :cond_0
    if-eqz v0, :cond_2

    .line 420
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrVelocity()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_0

    .line 424
    :cond_1
    move v1, v2

    :goto_0
    move v2, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData()V

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsModel;->getRecentsTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setFlingingFast(Z)V

    .line 430
    return v0
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .locals 9

    .line 955
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 958
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v2

    .line 959
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 961
    move v5, v4

    goto :goto_0

    .line 959
    :cond_0
    nop

    .line 961
    move v5, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsInterpolator()Lcom/android/quickstep/RecentsAnimationInterpolator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/android/quickstep/RecentsAnimationInterpolator;->interpolate(F)Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    move-result-object v6

    .line 962
    iget v8, v6, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    .line 963
    iget v6, v6, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskY:F

    .line 965
    if-eqz v5, :cond_3

    .line 966
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    .line 967
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    .line 968
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 969
    invoke-direct {p0, p1, v2, v8, v6}, Lcom/android/quickstep/views/RecentsView;->getAdjacentScaleAndTranslation(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;FF)[F

    move-result-object v3

    .line 971
    aget v5, v3, v4

    neg-float v5, v5

    aput v5, v3, v4

    .line 972
    invoke-direct {p0, v2, v3}, Lcom/android/quickstep/views/RecentsView;->createAnimForChild(Landroid/view/View;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 974
    :cond_1
    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 975
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 976
    invoke-direct {p0, p1, v1, v8, v6}, Lcom/android/quickstep/views/RecentsView;->getAdjacentScaleAndTranslation(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;FF)[F

    move-result-object p1

    .line 978
    invoke-direct {p0, v1, p1}, Lcom/android/quickstep/views/RecentsView;->createAnimForChild(Landroid/view/View;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 980
    :cond_2
    goto :goto_2

    .line 982
    :cond_3
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getCurveScale()F

    move-result p1

    sub-float/2addr v8, p1

    mul-float/2addr v5, v8

    .line 983
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v4, [F

    .line 984
    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v8, :cond_4

    neg-float v8, v5

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    aput v8, v4, v3

    .line 983
    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 986
    sub-int p1, v2, v1

    add-int/2addr v2, p1

    .line 987
    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result p1

    if-ge v2, p1, :cond_6

    .line 988
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 990
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_5

    neg-float v5, v5

    :cond_5
    invoke-virtual {v1, v5}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    .line 991
    invoke-virtual {v1, v7}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    .line 992
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 988
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 995
    :cond_6
    :goto_2
    return-object v0
.end method

.method public createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/util/PendingAnimation;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 650
    move-wide/from16 v3, p4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 651
    new-instance v6, Lcom/android/launcher3/util/PendingAnimation;

    invoke-direct {v6, v5}, Lcom/android/launcher3/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v7

    .line 654
    if-nez v7, :cond_0

    .line 655
    return-object v6

    .line 658
    :cond_0
    new-array v8, v7, [I

    .line 659
    sget-object v9, Lcom/android/quickstep/views/RecentsView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10, v9}, Lcom/android/quickstep/views/RecentsView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    .line 661
    new-array v9, v7, [I

    .line 662
    new-instance v11, Lcom/android/quickstep/views/-$$Lambda$RecentsView$22olkO-xTCGy8V4w_dNEM5CXDkY;

    invoke-direct {v11, v1}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$22olkO-xTCGy8V4w_dNEM5CXDkY;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/quickstep/views/RecentsView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    .line 664
    nop

    .line 665
    iget-boolean v11, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v11, :cond_1

    add-int/lit8 v11, v7, -0x1

    goto :goto_0

    .line 666
    :cond_1
    move v11, v10

    :goto_0
    iget-boolean v12, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v12, :cond_2

    .line 667
    move v12, v10

    goto :goto_1

    .line 666
    :cond_2
    add-int/lit8 v12, v7, -0x1

    .line 667
    :goto_1
    const/4 v13, 0x1

    if-le v7, v13, :cond_4

    .line 668
    iget-boolean v14, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v14, :cond_3

    .line 669
    move v14, v13

    goto :goto_2

    .line 668
    :cond_3
    add-int/lit8 v14, v7, -0x2

    .line 669
    :goto_2
    aget v15, v8, v12

    aget v14, v8, v14

    sub-int v14, v15, v14

    goto :goto_3

    .line 671
    :cond_4
    move v14, v10

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v15

    .line 673
    nop

    .line 674
    move/from16 v17, v10

    :goto_4
    if-ge v10, v7, :cond_f

    .line 675
    invoke-virtual {v0, v10}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 676
    if-ne v13, v1, :cond_6

    .line 677
    if-eqz p2, :cond_5

    .line 678
    sget-object v13, Lcom/android/quickstep/views/RecentsView;->ALPHA:Landroid/util/Property;

    move/from16 v19, v7

    move/from16 v20, v11

    const/4 v7, 0x1

    new-array v11, v7, [F

    const/16 v18, 0x0

    const/16 v16, 0x0

    aput v18, v11, v16

    invoke-static {v1, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-static {v11, v3, v4, v13, v5}, Lcom/android/quickstep/views/RecentsView;->addAnim(Landroid/animation/ObjectAnimator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    .line 679
    sget-object v11, Lcom/android/quickstep/views/RecentsView;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v7, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v13, v16

    invoke-static {v1, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v7, v3, v4, v11, v5}, Lcom/android/quickstep/views/RecentsView;->addAnim(Landroid/animation/ObjectAnimator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    goto :goto_5

    .line 674
    :cond_5
    move/from16 v19, v7

    move/from16 v20, v11

    :goto_5
    move-object/from16 v22, v8

    move/from16 v21, v12

    :goto_6
    const/4 v12, 0x1

    const/16 v16, 0x0

    goto/16 :goto_c

    .line 689
    :cond_6
    move/from16 v19, v7

    move/from16 v20, v11

    iget-boolean v7, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v7, :cond_7

    .line 690
    move v7, v14

    goto :goto_7

    .line 689
    :cond_7
    nop

    .line 690
    const/4 v7, 0x0

    :goto_7
    iget v11, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-ne v11, v15, :cond_b

    .line 691
    iget-boolean v11, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v11, :cond_8

    .line 692
    move/from16 v11, v20

    goto :goto_8

    :cond_8
    move v11, v12

    :goto_8
    move/from16 v21, v12

    iget v12, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-ne v12, v11, :cond_a

    .line 693
    iget-boolean v11, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v11, :cond_9

    neg-int v11, v14

    goto :goto_9

    :cond_9
    move v11, v14

    :goto_9
    add-int/2addr v7, v11

    .line 695
    :cond_a
    goto :goto_b

    .line 697
    :cond_b
    move/from16 v21, v12

    iget v11, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 698
    if-ne v15, v11, :cond_d

    .line 699
    iget-boolean v11, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v11, :cond_c

    neg-int v11, v14

    goto :goto_a

    :cond_c
    move v11, v14

    :goto_a
    add-int/2addr v7, v11

    .line 702
    :cond_d
    :goto_b
    aget v11, v9, v10

    aget v12, v8, v10

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    .line 703
    if-eqz v11, :cond_e

    .line 704
    sget-object v7, Lcom/android/quickstep/views/RecentsView;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v22, v8

    const/4 v12, 0x1

    new-array v8, v12, [F

    int-to-float v11, v11

    const/16 v16, 0x0

    aput v11, v8, v16

    invoke-static {v13, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-static {v7, v3, v4, v8, v5}, Lcom/android/quickstep/views/RecentsView;->addAnim(Landroid/animation/ObjectAnimator;JLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorSet;)V

    .line 706
    nop

    .line 674
    move/from16 v17, v12

    goto :goto_c

    :cond_e
    move-object/from16 v22, v8

    goto :goto_6

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    move/from16 v7, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v8, v22

    goto/16 :goto_4

    .line 711
    :cond_f
    if-eqz v17, :cond_10

    .line 712
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 713
    new-instance v4, Lcom/android/quickstep/views/-$$Lambda$RecentsView$O8Draeq9XtDwd0zxi6MdnjpVeKc;

    invoke-direct {v4, v0}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$O8Draeq9XtDwd0zxi6MdnjpVeKc;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 714
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 718
    :cond_10
    if-eqz p2, :cond_11

    .line 719
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setTranslationZ(F)V

    .line 722
    :cond_11
    iput-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 723
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    new-instance v3, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;

    move/from16 v4, p3

    invoke-direct {v3, v0, v4, v1, v15}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$W4rpBvRw7hjG-nky8UfZ86QDTwk;-><init>(Lcom/android/quickstep/views/RecentsView;ZLcom/android/quickstep/views/TaskView;I)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 748
    return-object v6

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createTaskLauncherAnimation(Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/util/PendingAnimation;
    .locals 4

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1013
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    .line 1014
    if-nez v1, :cond_0

    .line 1015
    new-instance p1, Lcom/android/launcher3/util/PendingAnimation;

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    return-object p1

    .line 1018
    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsInterpolator()Lcom/android/quickstep/RecentsAnimationInterpolator;

    move-result-object v1

    .line 1019
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1020
    new-instance v3, Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;

    invoke-direct {v3, v1, p1}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$hsdx1nkit4En3yN0xM05qqhzgAk;-><init>(Lcom/android/quickstep/RecentsAnimationInterpolator;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1028
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1029
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1031
    new-instance p2, Lcom/android/launcher3/util/PendingAnimation;

    invoke-direct {p2, v0}, Lcom/android/launcher3/util/PendingAnimation;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    .line 1032
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    new-instance p3, Lcom/android/quickstep/views/-$$Lambda$RecentsView$Teh8GRBFaLvFAGMovFWmDrCmFK4;

    invoke-direct {p3, p0, p1}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$Teh8GRBFaLvFAGMovFWmDrCmFK4;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 1046
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/util/PendingAnimation;

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V
    .locals 6

    .line 775
    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/util/PendingAnimation;

    move-result-object p1

    .line 777
    iget-object p2, p1, Lcom/android/launcher3/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p2

    .line 779
    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 780
    new-instance p3, Lcom/android/quickstep/views/-$$Lambda$RecentsView$7BIl_GkisndzMV7XPlHgrVMc6Oo;

    invoke-direct {p3, p1}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$7BIl_GkisndzMV7XPlHgrVMc6Oo;-><init>(Lcom/android/launcher3/util/PendingAnimation;)V

    iput-object p3, p2, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    .line 781
    iget-object p1, p2, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 782
    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    .line 783
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 787
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 788
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x43

    if-eq v0, v1, :cond_3

    const/16 v1, 0x70

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 793
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(I)V

    .line 794
    return v3

    .line 796
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz p1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(I)V

    .line 797
    return v3

    .line 804
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 806
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 808
    return v3

    .line 800
    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 802
    return v3

    .line 790
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(I)V

    .line 791
    return v3

    .line 812
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    .line 1060
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public getPageAt(I)Lcom/android/quickstep/views/TaskView;
    .locals 0

    .line 887
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    return-object p1
.end method

.method public getQuickScrubController()Lcom/android/quickstep/QuickScrubController;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mQuickScrubController:Lcom/android/quickstep/QuickScrubController;

    return-object v0
.end method

.method public abstract getTaskSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
.end method

.method public getTaskView(I)Lcom/android/quickstep/views/TaskView;
    .locals 3

    .line 282
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 284
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p1, :cond_0

    .line 285
    return-object v1

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isRtl()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    return v0
.end method

.method public isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z
    .locals 1

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadVisibleTaskData()V
    .locals 11

    .line 462
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getRecentsTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 463
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageNearestToCenterOfScreen()I

    move-result v1

    .line 464
    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 465
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 466
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v4

    .line 469
    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_5

    .line 470
    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/quickstep/views/TaskView;

    .line 471
    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    .line 472
    if-gt v2, v6, :cond_0

    if-gt v6, v1, :cond_0

    .line 473
    move v8, v5

    goto :goto_1

    .line 472
    :cond_0
    nop

    .line 473
    move v8, v3

    :goto_1
    if-eqz v8, :cond_2

    .line 474
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eq v7, v9, :cond_4

    .line 476
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v10, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 479
    invoke-virtual {v0, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 480
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->onTaskVisible(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 482
    :cond_1
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 484
    :cond_2
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v9, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 485
    invoke-virtual {v0, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 486
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->onTaskInvisible(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 488
    :cond_3
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 469
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 491
    :cond_5
    return-void
.end method

.method public maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .locals 3

    .line 938
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 940
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 941
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 942
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 941
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 943
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 944
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 946
    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 1

    .line 1051
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 1052
    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1056
    :cond_0
    return-void
.end method

.method public abstract onAllTasksRemoved()V
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 251
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 252
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    .line 253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 257
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 258
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 259
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    .line 260
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 905
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 906
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    .line 907
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 303
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mNextPageSwitchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mNextPageSwitchRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mNextPageSwitchRunnable:Ljava/lang/Runnable;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    .line 310
    :cond_1
    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    .line 367
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 314
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 316
    const/4 p1, 0x1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 880
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    .line 881
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 882
    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setAdjacentScale(F)V

    .line 883
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 264
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewRemoved(Landroid/view/View;)V

    .line 267
    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 270
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getRecentsTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 272
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->onTaskInvisible(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 766
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onVisibilityAggregated(Z)V

    .line 767
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->requestFocus()Z

    .line 772
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onWindowVisibilityChanged(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 246
    return-void
.end method

.method public reloadIfNeeded()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->isLoadPlanValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    new-instance v2, Lcom/android/quickstep/views/-$$Lambda$RecentsView$w02bBzSWizaR4dIzSj9kQ73I7BA;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$w02bBzSWizaR4dIzSj9kQ73I7BA;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsModel;->loadTasks(ILjava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanId:I

    .line 527
    :cond_0
    return-void
.end method

.method public removeIgnoreResetTask(Lcom/android/quickstep/views/TaskView;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public reset()V
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->unloadVisibleTaskData()V

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 517
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quickstep/OverviewCallbacks;->get(Landroid/content/Context;)Lcom/android/quickstep/OverviewCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewCallbacks;->onResetOverview()V

    .line 518
    return-void
.end method

.method public resetTaskVisuals()V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 372
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskViews:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->resetVisualProperties()V

    .line 370
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    .line 379
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData()V

    .line 380
    return-void
.end method

.method public setAdjacentScale(F)V
    .locals 7

    .line 837
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    .line 841
    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    .line 842
    if-nez p1, :cond_1

    .line 843
    return-void

    .line 845
    :cond_1
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 846
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 848
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v0, :cond_2

    .line 849
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 850
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    invoke-direct {p0, p1, v0, v5, v3}, Lcom/android/quickstep/views/RecentsView;->getAdjacentScaleAndTranslation(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;FF)[F

    move-result-object v5

    .line 852
    aget v6, v5, v4

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 853
    aget v6, v5, v4

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 854
    aget v6, v5, v1

    neg-float v6, v6

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/TaskView;->setTranslationX(F)V

    .line 855
    aget v5, v5, v2

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/TaskView;->setTranslationY(F)V

    .line 857
    :cond_2
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 858
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 859
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentScale:F

    invoke-direct {p0, p1, v0, v5, v3}, Lcom/android/quickstep/views/RecentsView;->getAdjacentScaleAndTranslation(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;FF)[F

    move-result-object p1

    .line 861
    aget v3, p1, v4

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 862
    aget v3, p1, v4

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 863
    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setTranslationX(F)V

    .line 864
    aget p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->setTranslationY(F)V

    .line 866
    :cond_3
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 2

    .line 820
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 821
    return-void

    .line 824
    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    .line 825
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 826
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 825
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 829
    :cond_1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 831
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 833
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    .line 834
    return-void
.end method

.method public setCurrentTask(I)V
    .locals 2

    .line 564
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 568
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/quickstep/views/-$$Lambda$RecentsView$w02bBzSWizaR4dIzSj9kQ73I7BA;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/-$$Lambda$RecentsView$w02bBzSWizaR4dIzSj9kQ73I7BA;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/RecentsModel;->loadTasks(ILjava/util/function/Consumer;)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanId:I

    .line 569
    return-void
.end method

.method public setFirstTaskIconScaledDown(ZZ)V
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstTaskIconScaledDown:Z

    if-ne v0, p1, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstTaskIconScaledDown:Z

    .line 597
    invoke-direct {p0, p2}, Lcom/android/quickstep/views/RecentsView;->applyIconScale(Z)V

    .line 598
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 404
    const v3, 0x7f0b009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 405
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/quickstep/views/RecentsView;->setPadding(IIII)V

    .line 408
    return-void
.end method

.method public setNextPageSwitchRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mNextPageSwitchRunnable:Ljava/lang/Runnable;

    .line 298
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    .line 293
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 294
    return-void
.end method

.method public setSwipeDownShouldLaunchApp(Z)V
    .locals 0

    .line 613
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mSwipeDownShouldLaunchApp:Z

    .line 614
    return-void
.end method

.method public shouldSwipeDownLaunchApp()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mSwipeDownShouldLaunchApp:Z

    return v0
.end method

.method public showNextTask()V
    .locals 4

    .line 572
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskView(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 573
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 576
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/TaskView;->launchTask(Z)V

    return-void

    .line 580
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 581
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 582
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/TaskView;->launchTask(Z)V

    .line 586
    :cond_1
    return-void
.end method

.method public showTask(I)V
    .locals 20

    move-object/from16 v0, p0

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040038

    const/4 v3, 0x0

    .line 541
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 542
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;)V

    .line 546
    new-instance v15, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v9

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    const/16 v16, 0x0

    new-instance v2, Landroid/content/ComponentName;

    const-string v14, ""

    const-string v13, ""

    invoke-direct {v2, v14, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object v2, v15

    move-object v14, v3

    move-object v3, v9

    move v9, v10

    move v10, v11

    move v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Z)V

    move-object/from16 v2, v19

    iput-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 549
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 551
    :cond_0
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    .line 555
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 556
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 558
    :cond_1
    return-void
.end method

.method public snapToTaskAfterNext()V
    .locals 1

    .line 816
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(I)V

    .line 817
    return-void
.end method

.method public updateCurveProperties()V
    .locals 11

    .line 437
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNormalChildWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 441
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 442
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 443
    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    .line 445
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v5

    .line 446
    :goto_0
    if-ge v0, v5, :cond_1

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 448
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    add-float/2addr v7, v8

    int-to-float v8, v1

    add-float/2addr v7, v8

    .line 449
    int-to-float v8, v2

    sub-float/2addr v8, v7

    .line 450
    add-int v7, v3, v1

    add-int/2addr v7, v4

    int-to-float v7, v7

    .line 451
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mScrollState:Lcom/android/quickstep/views/RecentsView$ScrollState;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 452
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v7

    .line 451
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v9, Lcom/android/quickstep/views/RecentsView$ScrollState;->linearInterpolation:F

    .line 453
    check-cast v6, Lcom/android/quickstep/views/RecentsView$PageCallbacks;

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mScrollState:Lcom/android/quickstep/views/RecentsView$ScrollState;

    invoke-interface {v6, v7}, Lcom/android/quickstep/views/RecentsView$PageCallbacks;->onPageScroll(Lcom/android/quickstep/views/RecentsView$ScrollState;)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_1
    return-void

    .line 438
    :cond_2
    :goto_1
    return-void
.end method

.method public updateEmptyMessage()V
    .locals 5

    .line 891
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 892
    move v0, v2

    goto :goto_0

    .line 891
    :cond_0
    nop

    .line 892
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 893
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 894
    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_3

    .line 895
    return-void

    .line 897
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 898
    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    .line 899
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    .line 900
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->invalidate()V

    .line 901
    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/quickstep/views/TaskView;
    .locals 3

    .line 232
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 234
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/android/quickstep/views/TaskView;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 236
    return-object v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 934
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isRecentsEnabled()Z
    .locals 1

    .line 934
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    return v0
.end method
