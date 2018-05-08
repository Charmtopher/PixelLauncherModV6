.class public abstract Lcom/android/launcher3/touch/SwipeDetector$Direction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
.end method

.method abstract getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
.end method
