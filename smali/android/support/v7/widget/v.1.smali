.class Landroid/support/v7/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic oX:Landroid/support/v7/widget/r;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/r;)V
    .locals 0

    .line 577
    iput-object p1, p0, Landroid/support/v7/widget/v;->oX:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/r;B)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/r;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 581
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/v;->oX:Landroid/support/v7/widget/r;

    invoke-static {v0}, Landroid/support/v7/widget/r;->c(Landroid/support/v7/widget/r;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/v;->oX:Landroid/support/v7/widget/r;

    invoke-static {v0}, Landroid/support/v7/widget/r;->d(Landroid/support/v7/widget/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 584
    iget-object p1, p0, Landroid/support/v7/widget/v;->oX:Landroid/support/v7/widget/r;

    invoke-static {p1}, Landroid/support/v7/widget/r;->b(Landroid/support/v7/widget/r;)V

    .line 585
    return-void
.end method
