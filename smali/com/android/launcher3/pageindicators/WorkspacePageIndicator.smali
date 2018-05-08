.class public Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# static fields
.field private static final LINE_ANIMATE_DURATION:I

.field private static final LINE_FADE_DELAY:I

.field private static final NUM_PAGES:Landroid/util/Property;

.field private static final PAINT_ALPHA:Landroid/util/Property;

.field public static final TOTAL_SCROLL:Landroid/util/Property;


# instance fields
.field public mActiveAlpha:I

.field private mAnimators:[Landroid/animation/ValueAnimator;

.field public mCurrentScroll:I

.field private final mDelayedLineFadeHandler:Landroid/os/Handler;

.field private mHideLineRunnable:Ljava/lang/Runnable;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLineHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNumPagesFloat:F

.field public mShouldAutoHide:Z

.field private mToAlpha:I

.field public mTotalScroll:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_ANIMATE_DURATION:I

    .line 37
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    .line 63
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "paint_alpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    .line 77
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "num_pages"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->NUM_PAGES:Landroid/util/Property;

    .line 91
    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$3;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "total_scroll"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->TOTAL_SCROLL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    .line 47
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    .line 50
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    .line 53
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    .line 105
    new-instance p3, Lcom/android/launcher3/pageindicators/-$$Lambda$WorkspacePageIndicator$GYuf5FtWPkL7Rkj0jPXaiUr4HE0;

    invoke-direct {p3, p0}, Lcom/android/launcher3/pageindicators/-$$Lambda$WorkspacePageIndicator$GYuf5FtWPkL7Rkj0jPXaiUr4HE0;-><init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V

    iput-object p3, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:Ljava/lang/Runnable;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 123
    const p2, 0x7f0b0018

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    .line 125
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    .line 126
    if-eqz p1, :cond_0

    const/16 p2, 0xa5

    goto :goto_0

    :cond_0
    const/16 p2, 0xb2

    :goto_0
    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mActiveAlpha:I

    .line 127
    iget-object p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)[Landroid/animation/ValueAnimator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)V
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->animateLineToAlpha(I)V

    return-void
.end method


# virtual methods
.method public final animateLineToAlpha(I)V
    .locals 3

    .line 204
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    if-ne p1, v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mToAlpha:I

    .line 209
    sget-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->PAINT_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    .line 211
    return-void
.end method

.method public final hideAfterDelay()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mHideLineRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_FADE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 132
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mCurrentScroll:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mTotalScroll:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getWidth()I

    move-result v1

    .line 139
    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 140
    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 141
    add-int/2addr v2, v0

    .line 143
    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v5, v0

    int-to-float v6, v2

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    int-to-float v8, v0

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLineHeight:I

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    .line 143
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 145
    return-void

    .line 133
    :cond_1
    :goto_0
    return-void
.end method

.method public final setActiveMarker(I)V
    .locals 0

    .line 174
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object p1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 247
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 248
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 249
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 250
    goto :goto_0

    .line 251
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 252
    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 255
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 4

    .line 178
    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mNumPagesFloat:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->NUM_PAGES:Landroid/util/Property;

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 184
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 187
    :cond_1
    return-void
.end method

.method public final setPageDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public final setShouldAutoHide(Z)V
    .locals 1

    .line 195
    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mShouldAutoHide:Z

    .line 196
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->hideAfterDelay()V

    return-void

    .line 198
    :cond_0
    if-nez p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    :cond_1
    return-void
.end method

.method public final setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aput-object p1, v0, p2

    .line 230
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, p2

    new-instance v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;-><init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, p2

    sget v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->LINE_ANIMATE_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 238
    return-void
.end method
