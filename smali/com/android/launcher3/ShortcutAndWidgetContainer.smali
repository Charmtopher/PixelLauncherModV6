.class public Lcom/android/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContainerType:I

.field private mCountX:I

.field public mInvertIfRtl:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 52
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 53
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    .line 54
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 209
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public final getCellContentHeight()I
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 110
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    goto :goto_0

    :pswitch_1
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    goto :goto_0

    :pswitch_2
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 109
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getChildAt(II)Landroid/view/View;
    .locals 6

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 64
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 68
    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_0

    .line 70
    return-object v2

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final invertLayoutHorizontally()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final measureChild(Landroid/view/View;)V
    .locals 8

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 117
    instance-of v2, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 118
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget-object v6, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->y:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIFF)V

    goto :goto_1

    .line 122
    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZI)V

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v2

    .line 125
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    .line 126
    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez v3, :cond_1

    .line 127
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_0

    .line 128
    :cond_1
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 129
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    :goto_1
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 132
    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 134
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 183
    const/4 p1, 0x1

    return p1

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p1

    .line 143
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_2

    .line 144
    invoke-virtual {p0, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 145
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_1

    .line 146
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 148
    instance-of v0, p4, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 149
    move-object v0, p4

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 153
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 154
    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 156
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mScaleToFit:F

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setScaleX(F)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setScaleY(F)V

    .line 157
    iget v3, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    neg-float v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    int-to-float v4, v4

    iget v5, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    neg-float v1, v4

    div-float/2addr v1, v3

    iget-object v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    invoke-virtual {v3, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setTranslationY(F)V

    .line 161
    :cond_0
    iget v0, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 162
    iget v1, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 163
    iget v2, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget v3, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    add-int/2addr v3, v1

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 165
    iget-boolean p4, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_1

    .line 166
    iput-boolean p2, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 168
    iget-object p4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 169
    invoke-virtual {p0, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const-string v4, "android.home.drop"

    aget v5, p4, p2

    add-int/2addr v5, v0

    iget v0, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    const/4 v0, 0x1

    aget p4, p4, v0

    add-int/2addr p4, v1

    iget p5, p5, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    div-int/lit8 p5, p5, 0x2

    add-int v6, p4, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 143
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 177
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 81
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 84
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 84
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 196
    if-eqz p1, :cond_0

    .line 197
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public final setCellDimensions$3b4dfe4b(III)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 58
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 59
    iput p3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    .line 60
    return-void
.end method

.method public final setupLp(Landroid/view/View;)V
    .locals 8

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 94
    instance-of p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    .line 96
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIFF)V

    .line 98
    return-void

    .line 99
    :cond_0
    iget p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZI)V

    .line 101
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method
