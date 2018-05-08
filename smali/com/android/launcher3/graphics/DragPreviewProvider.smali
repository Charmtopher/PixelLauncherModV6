.class public Lcom/android/launcher3/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blurSizeOutline:I

.field public generatedDragOutline:Landroid/graphics/Bitmap;

.field public mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

.field private final mTempRect:Landroid/graphics/Rect;

.field public final mView:Landroid/view/View;

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 64
    nop

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    .line 67
    iget-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-static {p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p1

    .line 70
    iget p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    .line 71
    return-void

    .line 72
    :cond_0
    iget p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    iput p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    .line 74
    return-void
.end method

.method public static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 3

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 153
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    :goto_1
    return-object v0
.end method

.method public static synthetic lambda$createDragBitmap$0(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V
    .locals 0

    .line 135
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public static synthetic lambda$createDragBitmap$1(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Canvas;)V
    .locals 1

    .line 139
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method


# virtual methods
.method public convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 179
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createDragBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-static {v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 128
    nop

    .line 138
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 131
    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 134
    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v2, v3

    new-instance v3, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;F)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/graphics/BitmapRenderer;->createSoftwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v1, v2

    new-instance v2, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$ku63NENVzwDPH8dVoEkuHh0oxUk;

    invoke-direct {v2, p0}, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$ku63NENVzwDPH8dVoEkuHh0oxUk;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;)V

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/graphics/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final drawDragView(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 83
    iget-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of p2, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz p2, :cond_0

    .line 84
    iget-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    iget-object p2, p2, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-static {p2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    iget v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 93
    nop

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 99
    nop

    .line 102
    move v2, v1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 102
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 105
    iget-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 108
    if-eqz v2, :cond_3

    .line 109
    iget-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 112
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    return-void
.end method

.method public getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 164
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mScaleToFit:F

    div-float/2addr v0, v1

    .line 171
    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 171
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    .line 173
    const/4 v1, 0x1

    aget v2, p2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v1

    .line 175
    return v0
.end method
