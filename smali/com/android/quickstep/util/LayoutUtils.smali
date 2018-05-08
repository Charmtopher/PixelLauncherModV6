.class public Lcom/android/quickstep/util/LayoutUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MULTI_WINDOW_STRATEGY_DEVICE_PROFILE:I = 0x2

.field private static final MULTI_WINDOW_STRATEGY_HALF_SCREEN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFallbackTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 2

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/quickstep/util/LayoutUtils;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;FILandroid/graphics/Rect;)V

    .line 47
    return-void
.end method

.method public static calculateLauncherTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float v0, v0

    .line 42
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/quickstep/util/LayoutUtils;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;FILandroid/graphics/Rect;)V

    .line 43
    return-void
.end method

.method public static calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;FILandroid/graphics/Rect;)V
    .locals 7

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 54
    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 56
    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    .line 57
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getFullScreenProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p3

    .line 61
    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    .line 62
    iget v3, p3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v3, v3

    .line 63
    const v4, 0x7f0b00af

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v2

    .line 66
    iget-boolean p3, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p3, :cond_0

    .line 67
    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    goto :goto_0

    .line 69
    :cond_0
    div-float/2addr v3, v2

    sub-float/2addr v3, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, p3

    .line 74
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v3, p3

    .line 76
    :goto_0
    const p3, 0x7f0b00ae

    goto :goto_1

    .line 78
    :cond_2
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, p3

    .line 79
    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v3, p3

    .line 80
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 81
    const p3, 0x7f0b00ad

    goto :goto_1

    .line 82
    :cond_3
    const p3, 0x7f0b00ac

    .line 80
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 85
    const v4, 0x7f0b009f

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 86
    const v5, 0x7f0b00ab

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 90
    iget v5, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 91
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v6

    .line 93
    int-to-float p1, p1

    sub-float v6, p1, v4

    sub-float/2addr v6, p2

    sub-float/2addr v6, p0

    .line 95
    int-to-float p0, v5

    sub-float/2addr p0, p3

    .line 97
    div-float/2addr p0, v1

    div-float/2addr v6, v3

    invoke-static {p0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 98
    mul-float p3, p0, v1

    .line 99
    mul-float/2addr p0, v3

    .line 102
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, p3

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    .line 103
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, p2

    sub-float/2addr p1, p0

    div-float/2addr p1, v2

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr v0, p1

    .line 105
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-float/2addr v3, p3

    .line 106
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 105
    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    return-void
.end method
