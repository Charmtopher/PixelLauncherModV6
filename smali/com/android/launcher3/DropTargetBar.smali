.class public Lcom/android/launcher3/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# static fields
.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

.field protected mDeferOnDragEnd:Z

.field public mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field private final mFadeAnimationEndRunnable:Ljava/lang/Runnable;

.field private mIsVertical:Z

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Lcom/android/launcher3/-$$Lambda$DropTargetBar$u4vE0cw_SSJuVFB14YDC16eZe14;

    invoke-direct {p1, p0}, Lcom/android/launcher3/-$$Lambda$DropTargetBar$u4vE0cw_SSJuVFB14YDC16eZe14;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 60
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p1, Lcom/android/launcher3/-$$Lambda$DropTargetBar$u4vE0cw_SSJuVFB14YDC16eZe14;

    invoke-direct {p1, p0}, Lcom/android/launcher3/-$$Lambda$DropTargetBar$u4vE0cw_SSJuVFB14YDC16eZe14;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 60
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 68
    return-void
.end method

.method private animateToVisibility(Z)V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_2

    .line 209
    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 212
    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 214
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 217
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getAlpha()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->setVisibility(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 227
    :cond_2
    return-void
.end method

.method private getVisibleButtonsCount()I
    .locals 6

    .line 198
    nop

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 200
    invoke-virtual {v4}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 199
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/launcher3/DropTargetBar;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final deferOnDragEnd()V
    .locals 1

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    .line 243
    return-void
.end method

.method public final onDragEnd()V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    return-void

    .line 250
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    .line 252
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 234
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    .line 235
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ButtonDropTarget;

    aput-object v2, v1, v0

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/ButtonDropTarget;->setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 168
    iget-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    const/16 p3, 0x8

    const/4 p5, 0x0

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0028

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 170
    nop

    .line 173
    iget-object p2, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length p4, p2

    move v1, p1

    move v0, p5

    :goto_0
    if-ge v0, p4, :cond_1

    aget-object v2, p2, v0

    .line 174
    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 175
    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 176
    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, p5, v1, v4, v3}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    .line 177
    add-int/2addr v3, p1

    .line 173
    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    return-void

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/DropTargetBar;->getVisibleButtonsCount()I

    move-result p1

    .line 182
    sub-int/2addr p4, p2

    div-int/2addr p4, p1

    .line 184
    div-int/lit8 p1, p4, 0x2

    .line 186
    iget-object p2, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v0, p2

    move v1, p1

    move p1, p5

    :goto_1
    if-ge p1, v0, :cond_4

    aget-object v2, p2, p1

    .line 187
    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v3

    if-eq v3, p3, :cond_3

    .line 188
    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 189
    sub-int v4, v1, v3

    add-int/2addr v3, v1

    .line 190
    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v5

    .line 189
    invoke-virtual {v2, v4, p5, v3, v5}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    .line 191
    add-int/2addr v1, p4

    .line 186
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 195
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 134
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 136
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    .line 139
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_0

    .line 140
    invoke-virtual {v7, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    .line 141
    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->measure(II)V

    .line 138
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    :cond_1
    goto :goto_4

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/DropTargetBar;->getVisibleButtonsCount()I

    move-result v0

    .line 146
    div-int v0, p1, v0

    .line 147
    nop

    .line 148
    iget-object v5, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v6, v5

    const/4 v7, 0x1

    move v8, v4

    move v9, v7

    :goto_1
    if-ge v8, v6, :cond_5

    aget-object v10, v5, v8

    .line 149
    invoke-virtual {v10}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_4

    .line 150
    if-eqz v9, :cond_3

    invoke-virtual {v10, v0}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 148
    move v9, v7

    goto :goto_2

    .line 150
    :cond_3
    nop

    .line 148
    move v9, v4

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 154
    :cond_5
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 155
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v5, v2

    :goto_3
    if-ge v4, v5, :cond_7

    aget-object v6, v2, v4

    .line 157
    invoke-virtual {v6}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_6

    .line 158
    invoke-virtual {v6, v9}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    .line 159
    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->measure(II)V

    .line 156
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 163
    :cond_7
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DropTargetBar;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 7

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 86
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 87
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 88
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 89
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 90
    nop

    .line 92
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 93
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/2addr v5, v4

    sub-int/2addr p1, v5

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 95
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 115
    :cond_1
    move v3, v4

    goto :goto_2

    .line 99
    :cond_2
    iget-boolean p1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_3

    .line 102
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/2addr v5, v4

    sub-int/2addr p1, v5

    iget-object v5, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v5, v6

    sub-int/2addr p1, v5

    iget-object v5, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/2addr v5, v3

    mul-int/2addr v5, v4

    div-int/2addr p1, v5

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr p1, v3

    goto :goto_1

    .line 107
    :cond_3
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    .line 109
    :goto_1
    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    mul-int/2addr v4, p1

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 111
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr p1, v3

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 113
    const/16 p1, 0x31

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    move v3, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v0, p1

    :goto_3
    if-ge v2, v0, :cond_4

    aget-object v1, p1, v2

    .line 117
    iput v3, v1, Lcom/android/launcher3/ButtonDropTarget;->mToolTipLocation:I

    invoke-virtual {v1}, Lcom/android/launcher3/ButtonDropTarget;->hideTooltip()V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 119
    :cond_4
    return-void
.end method

.method public final setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2

    .line 122
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 123
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method
