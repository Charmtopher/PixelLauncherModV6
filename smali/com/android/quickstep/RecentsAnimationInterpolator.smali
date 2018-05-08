.class public Lcom/android/quickstep/RecentsAnimationInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFinalTaskScale:F

.field private mInitialTaskScale:F

.field private mInitialTaskTranslationX:F

.field private mInsetWindow:Landroid/graphics/Rect;

.field private mInsets:Landroid/graphics/Rect;

.field private mScaledTask:Landroid/graphics/Rect;

.field private mSrcWindow:Landroid/graphics/Rect;

.field private mTargetTask:Landroid/graphics/Rect;

.field private mTask:Landroid/graphics/Rect;

.field private mTaskInsets:Landroid/graphics/Rect;

.field private mThumbnail:Landroid/graphics/Rect;

.field private mTmpInsets:Landroid/graphics/Rect;

.field private mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

.field private mWindow:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    invoke-direct {v0}, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpInsets:Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mWindow:Landroid/graphics/Rect;

    .line 66
    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsets:Landroid/graphics/Rect;

    .line 67
    iput-object p3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTask:Landroid/graphics/Rect;

    .line 68
    iput-object p4, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTaskInsets:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsetWindow:Landroid/graphics/Rect;

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsetWindow:Landroid/graphics/Rect;

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->insetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mThumbnail:Landroid/graphics/Rect;

    .line 73
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mThumbnail:Landroid/graphics/Rect;

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->insetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 74
    iput p5, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInitialTaskScale:F

    .line 75
    iput p6, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInitialTaskTranslationX:F

    .line 76
    iget-object p5, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsetWindow:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mThumbnail:Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p5, p6

    iput p5, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    .line 77
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p5, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mScaledTask:Landroid/graphics/Rect;

    .line 78
    iget-object p3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mScaledTask:Landroid/graphics/Rect;

    iget p5, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    invoke-static {p3, p5}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 79
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 80
    iget p4, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    invoke-static {p3, p4}, Lcom/android/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 81
    new-instance p4, Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsetWindow:Landroid/graphics/Rect;

    invoke-direct {p4, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTargetTask:Landroid/graphics/Rect;

    .line 82
    iget-object p4, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTargetTask:Landroid/graphics/Rect;

    iget p5, p1, Landroid/graphics/Rect;->left:I

    iget p6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, p6

    iget p6, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p6

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p6

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    invoke-virtual {p4, p5, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 85
    iget p1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p1

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsetWindow:Landroid/graphics/Rect;

    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 87
    invoke-static {p1, p3}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 88
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 89
    invoke-static {p4, p3}, Lcom/android/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 90
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mSrcWindow:Landroid/graphics/Rect;

    .line 91
    iget-object p1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mSrcWindow:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mThumbnail:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p3, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mThumbnail:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 93
    return-void
.end method


# virtual methods
.method public interpolate(F)Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInitialTaskScale:F

    iget v2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    .line 98
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInitialTaskTranslationX:F

    iget-object v2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTargetTask:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mScaledTask:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskX:F

    .line 100
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTargetTask:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mScaledTask:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskY:F

    .line 103
    iget v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 104
    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget v4, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mFinalTaskScale:F

    div-float/2addr v0, v4

    iput v0, v3, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winScale:F

    .line 105
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mSrcWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {p1, v3, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iput v3, v0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winX:F

    .line 107
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget-object v3, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mSrcWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {p1, v3, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iput v2, v0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winY:F

    .line 110
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpInsets:Landroid/graphics/Rect;

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 112
    iget-object p1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget-object p1, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget-object p1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    iget-object p1, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winCrop:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->insetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 115
    iget-object p1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator;->mTmpTaskWindowBounds:Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    return-object p1
.end method
