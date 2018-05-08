.class public Lcom/android/launcher3/anim/Interpolators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final ACCEL_1_5:Landroid/view/animation/Interpolator;

.field public static final ACCEL_2:Landroid/view/animation/Interpolator;

.field public static final AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

.field public static final AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

.field public static final APP_CLOSE_ALPHA:Landroid/view/animation/Interpolator;

.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_1_5:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_2:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_2_5:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_3:Landroid/view/animation/Interpolator;

.field public static final EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final OVERSHOOT_0:Landroid/view/animation/Interpolator;

.field public static final SCROLL:Landroid/view/animation/Interpolator;

.field public static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final ZOOM_IN:Landroid/view/animation/Interpolator;

.field public static final ZOOM_OUT:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 33
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_1_5:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 54
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    const v6, 0x3d4ccccd    # 0.05f

    const/4 v7, 0x0

    const v8, 0x3e088872

    const v9, 0x3da3d70a    # 0.08f

    const v10, 0x3e2aaa7e

    const v11, 0x3ecccccd    # 0.4f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 56
    const v6, 0x3e666666    # 0.225f

    const v7, 0x3f70a3d7    # 0.94f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 57
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->APP_CLOSE_ALPHA:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_0:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$2;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    .line 98
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$3;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    .line 106
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$4;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;
    .locals 1

    .line 117
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-object p0
.end method
