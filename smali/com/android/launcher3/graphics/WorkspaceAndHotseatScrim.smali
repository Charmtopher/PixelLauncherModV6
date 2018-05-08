.class public Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;
.super Lcom/android/launcher3/graphics/ViewScrim;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field private mAlpha:I

.field private final mBottomMask:Landroid/graphics/Bitmap;

.field private final mBottomMaskPaint:Landroid/graphics/Paint;

.field private final mFinalMaskRect:Landroid/graphics/RectF;

.field private mFullScrimColor:I

.field private final mHasHotseatScrim:Z

.field private final mHighlightRect:Landroid/graphics/Rect;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mMaskHeight:I

.field private final mMaxAlpha:I

.field private final mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 21

    move-object/from16 v0, p0

    .line 68
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/graphics/ViewScrim;-><init>(Landroid/view/View;)V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mHighlightRect:Landroid/graphics/Rect;

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mFinalMaskRect:Landroid/graphics/RectF;

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mAlpha:I

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 70
    iget-object v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 72
    iget-object v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mMaxAlpha:I

    .line 73
    nop

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 73
    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mMaskHeight:I

    .line 76
    iget-object v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    iget-boolean v3, v3, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mHasHotseatScrim:Z

    .line 77
    iget-boolean v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mHasHotseatScrim:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-static {v6, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iget v6, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mMaskHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v12, v8}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    int-to-float v3, v3

    const/4 v9, 0x3

    new-array v10, v9, [I

    const v11, 0xffffff

    aput v11, v10, v1

    const/16 v1, 0xf2

    const/4 v11, -0x1

    invoke-static {v11, v1}, Landroid/support/v4/b/a;->f(II)I

    move-result v1

    aput v1, v10, v4

    aput v11, v10, v2

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v8

    move/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v5

    move v11, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-object v6, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mBottomMask:Landroid/graphics/Bitmap;

    .line 79
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 80
    iget-object v1, v0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 81
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 86
    iget v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mAlpha:I

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->computeScrollWithoutInvalidation()V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mHighlightRect:Landroid/graphics/Rect;

    .line 94
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mHighlightRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 98
    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mFullScrimColor:I

    iget v1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mAlpha:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->f(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mHasHotseatScrim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mFinalMaskRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mMaskHeight:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    iget-object p2, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x42c80000    # 100.0f

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mProgress:F

    sub-float/2addr v0, v1

    mul-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget-object p2, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mBottomMask:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mFinalMaskRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 107
    :cond_2
    return-void
.end method

.method public onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 1

    .line 129
    nop

    .line 130
    iget p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    .line 129
    const/high16 v0, 0x55000000

    invoke-static {v0, p1}, Landroid/support/v4/b/a;->d(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mFullScrimColor:I

    .line 131
    iget-object p1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mFullScrimColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    return-void
.end method

.method protected final onProgressChanged()V
    .locals 2

    .line 111
    iget v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mMaxAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mProgress:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mAlpha:I

    .line 112
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 118
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/android/launcher3/graphics/WorkspaceAndHotseatScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 123
    return-void
.end method
