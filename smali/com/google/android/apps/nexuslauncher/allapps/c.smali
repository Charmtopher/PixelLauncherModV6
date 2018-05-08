.class Lcom/google/android/apps/nexuslauncher/allapps/c;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# instance fields
.field protected final mPositionShift:Landroid/graphics/Point;

.field final synthetic xB:Lcom/google/android/apps/nexuslauncher/allapps/ActionView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionView;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->xB:Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 153
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mPositionShift:Landroid/graphics/Point;

    .line 157
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mPositionShift:Landroid/graphics/Point;

    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 158
    return-void
.end method

.method public static synthetic lambda$createDragBitmap$0(Lcom/google/android/apps/nexuslauncher/allapps/c;FLandroid/graphics/Canvas;)V
    .locals 0

    .line 180
    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/c;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method


# virtual methods
.method public final createDragBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->xB:Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/c;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mView:Landroid/view/View;

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    .line 176
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 177
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 179
    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->blurSizeOutline:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->blurSizeOutline:I

    add-int/2addr v0, v3

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/c;F)V

    invoke-static {v2, v0, v3}, Lcom/android/launcher3/graphics/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    .line 164
    const/4 v1, 0x0

    aget v2, p2, v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mPositionShift:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 165
    const/4 v1, 0x1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->mPositionShift:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    aput v2, p2, v1

    .line 166
    return v0
.end method
