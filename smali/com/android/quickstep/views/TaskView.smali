.class public Lcom/android/quickstep/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/views/RecentsView$PageCallbacks;
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;


# static fields
.field private static final CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final EDGE_SCALE_DOWN_FACTOR:F = 0.03f

.field private static final MAX_PAGE_SCRIM_ALPHA:F = 0.4f

.field private static final SCALE_ICON_DURATION:J = 0x78L


# instance fields
.field private mCurveScale:F

.field private mIconView:Landroid/widget/ImageView;

.field private mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/android/quickstep/views/-$$Lambda$TaskView$8AAwZvJUNMwmHQ9bssG34PGbAbA;->INSTANCE:Lcom/android/quickstep/views/-$$Lambda$TaskView$8AAwZvJUNMwmHQ9bssG34PGbAbA;

    sput-object v0, Lcom/android/quickstep/views/TaskView;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance p2, Lcom/android/quickstep/views/-$$Lambda$TaskView$QuGgavyMob9vJJgGm52abwDZX48;

    invoke-direct {p2, p0, p1}, Lcom/android/quickstep/views/-$$Lambda$TaskView$QuGgavyMob9vJJgGm52abwDZX48;-><init>(Lcom/android/quickstep/views/TaskView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance p1, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 97
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/quickstep/views/TaskView;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p2, :cond_0

    .line 91
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/TaskView;->launchTask(Z)V

    .line 92
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 93
    invoke-static {p2}, Lcom/android/quickstep/TaskUtils;->getComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p2

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logTaskLaunchOrDismiss(IILcom/android/launcher3/util/ComponentKey;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onTaskDataLoaded$2(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-static {p0}, Lcom/android/quickstep/views/TaskMenuView;->showForTask(Lcom/android/quickstep/views/TaskView;)Z

    return-void
.end method

.method public static synthetic lambda$onTaskDataLoaded$3(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .locals 0

    .line 152
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->requestDisallowInterceptTouchEvent(Z)V

    .line 153
    invoke-static {p0}, Lcom/android/quickstep/views/TaskMenuView;->showForTask(Lcom/android/quickstep/views/TaskView;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$static$0(F)F
    .locals 4

    .line 59
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public animateIconToScale(F)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 171
    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 114
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->bind()V

    .line 115
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 116
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public getCurveScale()F
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mCurveScale:F

    return v0
.end method

.method public getRecentsInterpolator()Lcom/android/quickstep/RecentsAnimationInterpolator;
    .locals 10

    .line 211
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 218
    new-instance v7, Lcom/android/quickstep/RecentsAnimationInterpolator;

    new-instance v2, Landroid/graphics/Rect;

    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    .line 222
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTop()I

    move-result v0

    invoke-direct {v6, v4, v0, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getScaleX()F

    move-result v8

    .line 224
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTranslationX()F

    move-result v9

    move-object v0, v7

    move-object v1, v2

    move-object v2, v5

    move-object v4, v6

    move v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/RecentsAnimationInterpolator;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 218
    return-object v7
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public launchTask(Z)V
    .locals 1

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V

    .line 129
    return-void
.end method

.method public launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object p1

    .line 137
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Z)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 141
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    .line 144
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 102
    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 103
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    .line 104
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 248
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 250
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object v1

    .line 254
    sget-object v2, Lcom/android/quickstep/views/TaskMenuView;->MENU_OPTIONS:[Lcom/android/quickstep/TaskSystemShortcut;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 255
    invoke-virtual {v5, v1, p0}, Lcom/android/quickstep/TaskSystemShortcut;->getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 256
    if-eqz v6, :cond_0

    .line 257
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v7, v5, Lcom/android/quickstep/TaskSystemShortcut;->labelResId:I

    iget v5, v5, Lcom/android/quickstep/TaskSystemShortcut;->labelResId:I

    .line 258
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 254
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/views/RecentsView$ScrollState;)V
    .locals 3

    .line 190
    sget-object v0, Lcom/android/quickstep/views/TaskView;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    iget p1, p1, Lcom/android/quickstep/views/RecentsView$ScrollState;->linearInterpolation:F

    .line 191
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    .line 195
    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/quickstep/views/TaskView;->mCurveScale:F

    .line 196
    iget p1, p0, Lcom/android/quickstep/views/TaskView;->mCurveScale:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 197
    iget p1, p0, Lcom/android/quickstep/views/TaskView;->mCurveScale:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 198
    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 149
    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/quickstep/views/-$$Lambda$TaskView$n2JxutskK7G9ydmzNjHMNUh8B8g;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/-$$Lambda$TaskView$n2JxutskK7G9ydmzNjHMNUh8B8g;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/quickstep/views/-$$Lambda$TaskView$pVgoTggoF3m3fvyTJvnqb9svLkQ;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/-$$Lambda$TaskView$pVgoTggoF3m3fvyTJvnqb9svLkQ;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 160
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    return-void
.end method

.method public onTaskWindowingModeChanged()V
    .locals 0

    .line 167
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    .line 265
    const/4 v0, 0x1

    const v1, 0x7f0c009d

    if-ne p1, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 268
    return v0

    .line 271
    :cond_0
    sget-object v1, Lcom/android/quickstep/views/TaskMenuView;->MENU_OPTIONS:[Lcom/android/quickstep/TaskSystemShortcut;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 272
    iget v5, v4, Lcom/android/quickstep/TaskSystemShortcut;->labelResId:I

    if-ne p1, v5, :cond_2

    .line 273
    nop

    .line 274
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object p1

    .line 273
    invoke-virtual {v4, p1, p0}, Lcom/android/quickstep/TaskSystemShortcut;->getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 275
    if-eqz p1, :cond_1

    .line 276
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 278
    :cond_1
    return v0

    .line 271
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public resetVisualProperties()V
    .locals 2

    .line 180
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setTranslationX(F)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setTranslationY(F)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setTranslationZ(F)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 186
    return-void
.end method

.method protected setIconScale(F)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 175
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 176
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 177
    return-void
.end method
