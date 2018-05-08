.class public Lcom/android/launcher3/anim/AlphaUpdateListener;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    .line 35
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 55
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/android/launcher3/anim/AlphaUpdateListener;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 40
    return-void
.end method
