.class Lcom/android/launcher3/anim/Interpolators$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 73
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v2, p1

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
