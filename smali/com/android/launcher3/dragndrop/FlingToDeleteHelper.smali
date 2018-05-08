.class public Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field final mFlingToDeleteThresholdVelocity:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 47
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mFlingToDeleteThresholdVelocity:I

    .line 49
    return-void
.end method


# virtual methods
.method final getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    .line 133
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 134
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result p2

    mul-float/2addr p1, p2

    div-float/2addr v0, p1

    float-to-double p1, v0

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public final recordMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 56
    return-void
.end method
