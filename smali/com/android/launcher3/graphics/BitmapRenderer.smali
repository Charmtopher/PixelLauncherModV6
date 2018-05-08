.class public Lcom/android/launcher3/graphics/BitmapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final USE_HARDWARE_BITMAP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    sput-boolean v0, Lcom/android/launcher3/graphics/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    return-void
.end method

.method public static createHardwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/launcher3/graphics/BitmapRenderer;->USE_HARDWARE_BITMAP:Z

    if-nez v0, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/graphics/BitmapRenderer;->createSoftwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 43
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;->draw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 45
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createSoftwareBitmap(IILcom/android/launcher3/graphics/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;
    .locals 1

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 32
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p2, p1}, Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;->draw(Landroid/graphics/Canvas;)V

    .line 33
    return-object p0
.end method
