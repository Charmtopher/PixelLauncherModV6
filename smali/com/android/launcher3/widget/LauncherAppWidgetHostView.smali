.class public Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;


# static fields
.field private static final sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;


# instance fields
.field private mAutoAdvanceRunnable:Ljava/lang/Runnable;

.field private mChildrenFocused:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mIsAttachedToWindow:Z

.field private mIsAutoAdvanceRegistered:Z

.field private mIsScrollable:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mReinflateOnConfigChange:Z

.field public mScaleToFit:F

.field private mSlop:F

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field public final mTranslationForCentering:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    .line 98
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 99
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 100
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 103
    const p1, 0x7f020051

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setBackgroundResource(I)V

    .line 105
    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz p1, :cond_0

    .line 106
    sget-object p1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    return-void
.end method

.method private checkIfAutoAdvance()V
    .locals 5

    .line 396
    nop

    .line 397
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    .line 398
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 399
    nop

    .line 400
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 403
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 404
    move v1, v2

    goto :goto_1

    .line 403
    :cond_1
    nop

    .line 404
    :goto_1
    if-eq v0, v1, :cond_3

    .line 405
    if-eqz v0, :cond_2

    .line 406
    sget-object v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 408
    :cond_2
    sget-object v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 410
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 412
    :cond_3
    return-void
.end method

.method private checkScrollableRecursively(Landroid/view/ViewGroup;)Z
    .locals 5

    .line 145
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    return v1

    .line 148
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 149
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 150
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 151
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    return v1

    .line 148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_2
    return v0
.end method

.method private getAdvanceable()Landroid/widget/Advanceable;
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 416
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    instance-of v2, v0, Landroid/widget/Advanceable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/widget/Advanceable;

    return-object v0

    :cond_1
    return-object v1

    .line 417
    :cond_2
    :goto_0
    return-object v1
.end method

.method private isSameOrientation()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 141
    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 140
    return v0
.end method

.method private maybeRegisterAutoAdvance()V
    .locals 3

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    .line 426
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 427
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-eq v1, v2, :cond_2

    .line 428
    iput-boolean v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    .line 429
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 430
    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 441
    :cond_2
    return-void
.end method

.method private scheduleNextAdvance()V
    .locals 6

    .line 444
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-nez v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 448
    const-wide/16 v2, 0x4e20

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    sget-object v4, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    .line 449
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_1

    .line 452
    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 454
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .line 247
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 249
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->clearChildFocus(Landroid/view/View;)V

    .line 349
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setSelected(Z)V

    .line 350
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestFocus()Z

    .line 282
    return v1

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 354
    iget-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    return p1
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    .line 253
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    return v0

    .line 273
    :cond_0
    const/high16 v0, 0x60000

    .line 272
    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mSlop:F

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 232
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 233
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 486
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 489
    iget-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mReinflateOnConfigChange:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isSameOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mReinflateOnConfigChange:Z

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 493
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 237
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 242
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 243
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 330
    if-eqz p1, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setSelected(Z)V

    .line 334
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 335
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 385
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 169
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 170
    return v1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 177
    return v1

    .line 180
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_5

    .line 200
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 197
    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-nez v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 190
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    .line 191
    nop

    .line 206
    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 290
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 291
    const/4 p1, 0x1

    return p1

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 298
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 301
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 302
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 309
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/ItemInfo;

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 311
    iget p2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne p2, v0, :cond_0

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-ne p1, v0, :cond_0

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 313
    iput-boolean v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 314
    return v0

    .line 306
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 307
    goto :goto_1

    .line 320
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 321
    return v0

    .line 325
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 370
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 371
    :catch_0
    move-exception p1

    .line 372
    new-instance p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 380
    :goto_0
    invoke-direct {p0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsScrollable:Z

    .line 381
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 117
    const/4 p1, 0x1

    return p1
.end method

.method public final onTouchComplete()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 268
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 216
    nop

    .line 223
    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onWindowVisibilityChanged(I)V

    .line 392
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 393
    return-void
.end method

.method public final reInflate()V
    .locals 3

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 502
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z

    .line 503
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 504
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 339
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 340
    iget-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mChildrenFocused:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setSelected(Z)V

    .line 341
    if-eqz p2, :cond_1

    .line 342
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 344
    :cond_1
    return-void
.end method

.method public final switchToErrorView()V
    .locals 3

    .line 364
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 365
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 130
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 136
    invoke-direct {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->isSameOrientation()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mReinflateOnConfigChange:Z

    .line 137
    return-void
.end method
