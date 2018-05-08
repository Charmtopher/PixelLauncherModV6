.class public Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# instance fields
.field private final mPositionShift:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 39
    iput-object p2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    .line 40
    return-void
.end method


# virtual methods
.method public final createDragBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 47
    iget v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v4, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 52
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    iget v5, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 55
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    return-object v3
.end method

.method public final getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 64
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v2

    .line 66
    iget-object v3, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 67
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v3, v4, v3

    .line 71
    :cond_0
    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v5, v3

    aput v5, p2, v4

    .line 73
    const/4 v3, 0x1

    aget v4, p2, v3

    iget-object v5, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    div-float/2addr v2, v7

    iget-object p1, p0, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v4, p1

    aput v4, p2, v3

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    .line 76
    div-float/2addr v1, p1

    return v1
.end method
