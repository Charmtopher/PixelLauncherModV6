.class Lcom/android/launcher3/anim/Interpolators$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 83
    const v0, 0x3eb33333    # 0.35f

    add-float/2addr p1, v0

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const v0, 0x3f3da130

    div-float/2addr p1, v0

    return p1
.end method
