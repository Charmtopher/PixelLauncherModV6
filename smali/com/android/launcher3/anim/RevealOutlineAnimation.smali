.class public abstract Lcom/android/launcher3/anim/RevealOutlineAnimation;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field protected mOutline:Landroid/graphics/Rect;

.field protected mOutlineRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    .line 24
    return-void
.end method


# virtual methods
.method public createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 2

    .line 33
    const/4 v0, 0x2

    if-eqz p2, :cond_0

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    :goto_0
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_1

    :cond_0
    new-array p2, v0, [F

    fill-array-data p2, :array_1

    goto :goto_0

    .line 34
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 36
    new-instance v1, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;-><init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;F)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    new-instance v0, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/anim/RevealOutlineAnimation$2;-><init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 72
    return-object p2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOutline(Landroid/graphics/Rect;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutlineRadius:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 78
    return-void
.end method

.method public getRadius()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutlineRadius:F

    return v0
.end method

.method abstract setProgress(F)V
.end method

.method public abstract shouldRemoveElevationDuringAnimation()Z
.end method
