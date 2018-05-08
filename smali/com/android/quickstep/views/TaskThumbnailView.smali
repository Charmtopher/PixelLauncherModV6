.class public Lcom/android/quickstep/views/TaskThumbnailView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final sDimFilterCache:[Landroid/graphics/LightingColorFilter;


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseActivity;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field private mClipBottom:F

.field private final mCornerRadius:F

.field private mDimAlpha:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

.field private final mPaint:Landroid/graphics/Paint;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/graphics/LightingColorFilter;

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->sDimFilterCache:[Landroid/graphics/LightingColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 56
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClipBottom:F

    .line 64
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    .line 76
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00a2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    .line 77
    invoke-static {p1}, Lcom/android/quickstep/TaskOverlayFactory;->get(Landroid/content/Context;)Lcom/android/quickstep/TaskOverlayFactory;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/quickstep/TaskOverlayFactory;->createOverlay(Landroid/view/View;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    .line 78
    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 81
    return-void
.end method

.method private static getLightingColorFilter(I)Landroid/graphics/LightingColorFilter;
    .locals 4

    .line 242
    const/4 v0, 0x0

    const/16 v1, 0xff

    if-gez p0, :cond_0

    .line 243
    nop

    .line 247
    move p0, v0

    goto :goto_0

    .line 244
    :cond_0
    if-le p0, v1, :cond_1

    .line 245
    nop

    .line 247
    move p0, v1

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/quickstep/views/TaskThumbnailView;->sDimFilterCache:[Landroid/graphics/LightingColorFilter;

    aget-object v2, v2, p0

    if-nez v2, :cond_2

    .line 248
    sget-object v2, Lcom/android/quickstep/views/TaskThumbnailView;->sDimFilterCache:[Landroid/graphics/LightingColorFilter;

    new-instance v3, Landroid/graphics/LightingColorFilter;

    .line 249
    invoke-static {v1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v3, v1, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    aput-object v3, v2, p0

    .line 251
    :cond_2
    sget-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->sDimFilterCache:[Landroid/graphics/LightingColorFilter;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private updateThumbnailMatrix()V
    .locals 12

    .line 165
    nop

    .line 166
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClipBottom:F

    .line 167
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_a

    .line 168
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    .line 169
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    .line 170
    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 172
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 176
    iget-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 178
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 181
    nop

    .line 195
    move v6, v8

    goto :goto_1

    .line 183
    :cond_0
    nop

    .line 184
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 186
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iget-object v9, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    if-eq v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 188
    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowModeCompat()Z

    move-result v6

    if-nez v6, :cond_1

    .line 190
    move v1, v7

    goto :goto_0

    .line 188
    :cond_1
    nop

    .line 190
    :goto_0
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 195
    :goto_1
    if-eqz v1, :cond_8

    .line 196
    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v5

    if-nez v5, :cond_3

    .line 197
    move v5, v10

    goto :goto_2

    .line 196
    :cond_3
    nop

    .line 197
    move v5, v7

    :goto_2
    iget-object v9, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v11, 0x5a

    mul-int/2addr v11, v5

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 198
    if-ne v5, v7, :cond_4

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 199
    :goto_3
    if-ne v5, v7, :cond_5

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_5
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 200
    :goto_4
    iget-object v11, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v11, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 201
    if-ne v5, v10, :cond_6

    .line 203
    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    neg-float v2, v3

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    :cond_6
    if-ne v5, v7, :cond_7

    .line 208
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 212
    goto :goto_5

    .line 213
    :cond_8
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 216
    :goto_5
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 217
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 219
    mul-float/2addr v4, v6

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 221
    iput v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClipBottom:F

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 226
    :cond_a
    if-eqz v1, :cond_b

    .line 228
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    goto :goto_6

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setTaskInfo(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;)V

    .line 232
    :goto_6
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->invalidate()V

    .line 233
    return-void
.end method

.method private updateThumbnailPaintFilter()V
    .locals 3

    .line 152
    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 153
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_0

    .line 154
    invoke-static {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getLightingColorFilter(I)Landroid/graphics/LightingColorFilter;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 156
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 159
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->invalidate()V

    .line 162
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    .line 85
    return-void
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 129
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v2

    .line 134
    iget v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClipBottom:F

    const/4 v9, 0x0

    cmpl-float v3, v3, v9

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v3, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    int-to-float v10, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClipBottom:F

    invoke-virtual {p1, v9, v9, v10, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 138
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v11, v2

    iget v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    iget v7, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    iget-object v8, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v10

    move v5, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    iget v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClipBottom:F

    invoke-virtual {p1, v9, v1, v10, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 142
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    iget v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    iget-object v7, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 146
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    iget v8, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mCornerRadius:F

    .line 147
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 146
    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 146
    :goto_1
    move-object v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 238
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    .line 239
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    .line 117
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailPaintFilter()V

    .line 118
    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 3

    .line 91
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 92
    const/high16 v0, -0x1000000

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    or-int/2addr v0, p1

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 99
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 100
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    iput-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 102
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 105
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 106
    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-virtual {p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    .line 109
    :goto_1
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailPaintFilter()V

    .line 110
    return-void
.end method
