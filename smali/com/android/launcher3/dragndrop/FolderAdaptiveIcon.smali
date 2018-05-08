.class public Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "SourceFile"


# instance fields
.field final mBadge:Landroid/graphics/drawable/Drawable;

.field private final mMask:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    iput-object p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mMask:Landroid/graphics/Path;

    .line 56
    return-void
.end method

.method public static createFolderAdaptiveIcon(Lcom/android/launcher3/Launcher;JLandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    .locals 9

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    iget v1, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iget v2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 80
    :try_start_0
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;

    move-object v3, v1

    move-object v4, p0

    move-wide v5, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$EvXjCRurKSBgeFM43Q21w_aCV1I;-><init>(Lcom/android/launcher3/Launcher;JLandroid/graphics/Bitmap;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object p0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string p1, "FolderAdaptiveIcon"

    const-string p2, "Unable to create folder icon"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$createDrawableOnUiThread$1(FFLcom/android/launcher3/folder/FolderIcon;Landroid/graphics/Canvas;)V
    .locals 1

    .line 118
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 119
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object p0, p2, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    return-void
.end method

.method static synthetic lambda$createFolderAdaptiveIcon$0(Lcom/android/launcher3/Launcher;JLandroid/graphics/Bitmap;Landroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    .locals 4

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->findFolderIcon(J)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    .line 82
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->drawBadge(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    mul-float/2addr p2, v2

    add-float/2addr v0, p2

    iget p2, p4, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    div-float/2addr v2, v0

    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v3, p4

    mul-float/2addr v2, v3

    new-instance v3, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;

    invoke-direct {v3, v0, v2, p0}, Lcom/android/launcher3/dragndrop/-$$Lambda$FolderAdaptiveIcon$L3UlyJ_DqQjUWQP5IsbeK9Sxbe8;-><init>(FFLcom/android/launcher3/folder/FolderIcon;)V

    invoke-static {p2, p4, v3}, Lcom/android/launcher3/graphics/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p4, p1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3, p4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p4, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;

    invoke-direct {p4, p3, p1, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FF)V

    new-instance p3, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;

    sub-float v0, p1, v0

    sub-float/2addr p1, v2

    invoke-direct {p3, p0, v0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FF)V

    new-instance p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-object p0
.end method


# virtual methods
.method public getIconMask()Landroid/graphics/Path;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mMask:Landroid/graphics/Path;

    return-object v0
.end method
