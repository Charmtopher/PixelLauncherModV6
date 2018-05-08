.class Lcom/android/launcher3/touch/SwipeDetector$1;
.super Lcom/android/launcher3/touch/SwipeDetector$Direction;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/launcher3/touch/SwipeDetector$Direction;-><init>()V

    return-void
.end method


# virtual methods
.method final getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
    .locals 0

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method final getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
    .locals 0

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    return p1
.end method
