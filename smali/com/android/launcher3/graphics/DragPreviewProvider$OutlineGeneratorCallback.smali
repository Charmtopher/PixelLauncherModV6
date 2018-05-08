.class public Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreviewSnapshot:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mPreviewSnapshot:Landroid/graphics/Bitmap;

    .line 189
    iget-object p1, p1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget-object v2, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mPreviewSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 199
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 201
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 203
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 204
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbc

    if-ge v6, v7, :cond_0

    .line 205
    aput-byte v4, v2, v5

    .line 203
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 210
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 212
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 213
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 216
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    iget-object v6, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget v6, v6, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 217
    const/4 v5, 0x2

    new-array v12, v5, [I

    .line 218
    invoke-virtual {v1, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 220
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    iget-object v7, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 220
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 223
    new-array v14, v5, [I

    .line 224
    invoke-virtual {v1, v2, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 227
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 229
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    iget-object v7, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget v7, v7, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 230
    new-array v5, v5, [I

    .line 231
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 234
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 235
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 236
    invoke-virtual {v3, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    aget v6, v5, v4

    neg-int v6, v6

    int-to-float v6, v6

    const/16 v16, 0x1

    aget v7, v5, v16

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v6, v5, v4

    neg-int v6, v6

    int-to-float v9, v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v17, v6

    move-object v6, v3

    move-object v4, v10

    move/from16 v10, v17

    move-object v4, v11

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v9, v6

    aget v6, v5, v16

    neg-int v6, v6

    int-to-float v10, v6

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 244
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 246
    aget v6, v5, v7

    int-to-float v6, v6

    aget v5, v5, v16

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    aget v5, v12, v7

    int-to-float v5, v5

    aget v6, v12, v16

    int-to-float v6, v6

    invoke-virtual {v3, v13, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    aget v5, v14, v7

    int-to-float v5, v5

    aget v6, v14, v16

    int-to-float v6, v6

    invoke-virtual {v3, v15, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    iget-object v0, v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;->this$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iput-object v1, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    .line 260
    return-void
.end method
