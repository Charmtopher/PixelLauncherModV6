.class public Lcom/android/launcher3/widget/PendingAppWidgetHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field public final mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field public final mStartState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V
    .locals 2

    .line 72
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f130006

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 74
    iput-object p2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 75
    iget p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    iput p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    .line 76
    iput-boolean p4, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    .line 78
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x1010036

    invoke-static {p4, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    iget-object p4, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 81
    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p4, p4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-static {v1, p4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 82
    const p1, 0x7f020048

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0b0070

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setElevation(F)V

    .line 86
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 87
    sget-object p1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Lcom/android/launcher3/model/PackageItemInfo;

    iget-object p4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    .line 91
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object p4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iput-object p4, p1, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 92
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p3, p0, p1}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    return-void

    .line 94
    :cond_0
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 96
    return-void
.end method


# virtual methods
.method public final applyState()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 180
    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public final isReadyForClickSetup()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v1, 0x4

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .line 201
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    .line 286
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    iget-boolean v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v2, :cond_6

    .line 292
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b006f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    const/4 v6, 0x2

    mul-int v9, v6, v7

    sub-int v13, v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v4

    sub-int/2addr v8, v9

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-nez v4, :cond_1

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v9, v9, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    const v18, 0x3fe66666    # 1.8f

    mul-float v11, v4, v18

    int-to-float v10, v10

    cmpl-float v11, v11, v10

    if-lez v11, :cond_2

    div-float v4, v10, v18

    :cond_2
    iget v10, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v10, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v4

    div-int/lit8 v19, v10, 0x2

    const/4 v15, 0x0

    iput-object v15, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-lez v13, :cond_4

    new-instance v14, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0049

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v10, v14

    move-object v9, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v20

    move/from16 v17, v21

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    int-to-float v10, v9

    int-to-float v11, v4

    mul-float v11, v11, v18

    add-float/2addr v10, v11

    iget v11, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    int-to-float v8, v8

    cmpg-float v8, v10, v8

    if-gez v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v9

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    div-int/lit8 v19, v8, 0x2

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    :cond_4
    :goto_0
    move/from16 v8, v19

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    div-int/2addr v10, v6

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int/2addr v5, v7

    iput v5, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    const v9, 0x3ecccccd    # 0.4f

    int-to-float v4, v4

    mul-float/2addr v9, v4

    float-to-int v4, v9

    add-int/2addr v8, v4

    iput v8, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int/2addr v3, v7

    iput v3, v6, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 293
    :cond_5
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 296
    :cond_6
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 298
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    :cond_7
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 307
    :cond_8
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    .line 126
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 127
    return-void
.end method

.method public final reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    .line 141
    iget-boolean v2, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v3}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 144
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    iget p1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget p1, v0, v3

    const v1, 0x3f333333    # 0.7f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v0, v3

    const/4 p1, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/graphics/DrawableFactory;->newPendingIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 157
    iput-boolean v3, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->invalidate()V

    .line 160
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 117
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    .line 102
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
