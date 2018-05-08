.class Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShiftX:F

.field private final mShiftY:F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FF)V
    .locals 2

    .line 147
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 148
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    iput p2, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mShiftX:F

    .line 150
    iput p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mShiftY:F

    .line 151
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mShiftX:F

    iget v2, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mShiftY:F

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 168
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 159
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$ShiftedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 164
    return-void
.end method
