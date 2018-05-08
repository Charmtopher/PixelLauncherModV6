.class Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public baseInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;->baseInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$InterpolatorWrapper;->baseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
