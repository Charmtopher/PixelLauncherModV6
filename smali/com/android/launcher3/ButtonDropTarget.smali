.class public abstract Lcom/android/launcher3/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# static fields
.field private static final sTempCords:[I


# instance fields
.field private mAccessibleDrag:Z

.field protected mActive:Z

.field private mBottomDragPadding:I

.field private mCurrentColorAnim:Landroid/animation/AnimatorSet;

.field mCurrentFilter:Landroid/graphics/ColorMatrix;

.field private final mDragDistanceThreshold:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field mDstFilter:Landroid/graphics/ColorMatrix;

.field protected mHoverColor:I

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field protected mOriginalTextColor:Landroid/content/res/ColorStateList;

.field mSrcFilter:Landroid/graphics/ColorMatrix;

.field protected mText:Ljava/lang/CharSequence;

.field private mTextVisible:Z

.field private mToolTip:Landroid/widget/PopupWindow;

.field mToolTipLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    .line 82
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    .line 96
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 99
    const p2, 0x7f0b005a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/ButtonDropTarget;->mBottomDragPadding:I

    .line 100
    const p2, 0x7f0b005d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragDistanceThreshold:I

    .line 101
    return-void
.end method

.method private animateTextColor(I)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 186
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    .line 191
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    .line 192
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 197
    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 198
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    .line 199
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 197
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$N4YlzUmBPkqf317Di_jCKDNcDyE;

    invoke-direct {v1, p0}, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$N4YlzUmBPkqf317Di_jCKDNcDyE;-><init>(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    const-string v1, "textColor"

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 207
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 208
    return-void
.end method

.method public static synthetic lambda$animateTextColor$0(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->invalidate()V

    .line 203
    return-void
.end method

.method public static synthetic lambda$onDrop$1(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 274
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {p1}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 275
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 276
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 0

    .line 240
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public abstract completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract getAccessibilityAction()I
.end method

.method public abstract getControlTypeForLogging()I
.end method

.method public final getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 4

    .line 295
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 296
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 298
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    sget-object v1, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v0, v3

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v1, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 300
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    aget v0, v0, v3

    sget-object v1, Lcom/android/launcher3/ButtonDropTarget;->sTempCords:[I

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 301
    return-void
.end method

.method public final getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;
    .locals 8

    .line 304
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v0

    .line 305
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result p1

    .line 306
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 308
    iget-object v3, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 311
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 312
    invoke-virtual {v3, p0, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    iget v3, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 322
    sub-int v5, v3, v1

    goto :goto_0

    .line 324
    :cond_0
    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    .line 325
    add-int v3, v5, v1

    .line 328
    :goto_0
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 329
    add-int v7, v6, v2

    .line 331
    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 335
    sub-int/2addr p1, v2

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    .line 336
    invoke-virtual {v4, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 338
    return-object v4
.end method

.method public getTextColor()I
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method final hideTooltip()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    .line 138
    :cond_0
    return-void
.end method

.method public final isDropEnabled()Z
    .locals 2

    .line 249
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 250
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget v0, v0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragDistanceThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 249
    return v0
.end method

.method public final isTextTruncated(I)Z
    .locals 3

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float p1, p1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, p1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public final onDragEnd()V
    .locals 1

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method

.method public final onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 4

    .line 142
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    .line 151
    nop

    .line 152
    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    .line 154
    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 155
    iget v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    goto :goto_0

    .line 161
    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mToolTip:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 164
    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 165
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->animateTextColor(I)V

    .line 166
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_3

    .line 167
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->cancel()V

    .line 169
    :cond_3
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->sendAccessibilityEvent(I)V

    .line 170
    return-void
.end method

.method public final onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 214
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 215
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 216
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->animateTextColor(I)V

    return-void

    .line 219
    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 221
    return-void
.end method

.method public final onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 175
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .line 225
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 226
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 227
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 229
    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 232
    iget-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setVisibility(I)V

    .line 234
    iget-boolean p1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    .line 235
    iget-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mAccessibleDrag:Z

    if-eqz p1, :cond_2

    move-object v0, p0

    nop

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 264
    iget-object v2, v0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 265
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 266
    iget-object v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3, v2, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 268
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v6

    .line 269
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v2, v4

    .line 270
    iget-object v2, v0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v2}, Lcom/android/launcher3/DropTargetBar;->deferOnDragEnd()V

    .line 272
    new-instance v15, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;

    invoke-direct {v15, v0, v1}, Lcom/android/launcher3/-$$Lambda$ButtonDropTarget$qr2_DaqtDn0T6cPZLzHlj54aOQg;-><init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 278
    iget-object v4, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    const/16 v12, 0x11d

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 282
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public final prepareAccessibilityDrop()V
    .locals 0

    .line 287
    return-void
.end method

.method protected final setDrawable(I)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void
.end method

.method public final setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 131
    return-void
.end method

.method public final setTextVisible(Z)V
    .locals 2

    .line 351
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 352
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 353
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTextVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 356
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 358
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 361
    :cond_3
    return-void
.end method

.method public abstract supportsAccessibilityDrop(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
.end method

.method protected abstract supportsDrop(Lcom/android/launcher3/ItemInfo;)Z
.end method

.method protected final updateText(I)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setText(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    .line 114
    iget-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method
