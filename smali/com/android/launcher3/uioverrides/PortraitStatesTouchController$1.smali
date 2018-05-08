.class Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mAngleMultiplier:D

.field final synthetic this$0:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$1;->this$0:Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide v0, 0x40062d0b19be1e91L    # 2.7719938288826786

    iput-wide v0, p0, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController$1;->mAngleMultiplier:D

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    .line 75
    const v0, 0x3eaaaaab

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 76
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    return p1

    .line 78
    :cond_0
    sub-float/2addr p1, v0

    .line 79
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    float-to-double v4, p1

    const-wide v6, 0x40062d0b19be1e91L    # 2.7719938288826786

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
