.class Lcom/android/launcher3/dragndrop/DragView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic val$info:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 213
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-static {v2, v3, v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->access$200(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 216
    instance-of v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v3}, Lcom/android/launcher3/dragndrop/DragView;->access$300(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 218
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v4}, Lcom/android/launcher3/dragndrop/DragView;->access$300(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 219
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v5}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006c

    .line 220
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 222
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    invoke-virtual {v6, v5, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 226
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 227
    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v9, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v10, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    aget-object v1, v1, v7

    invoke-static {v9, v10, v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->access$500(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher3/dragndrop/DragView;->access$402(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->access$400(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v0

    .line 231
    nop

    .line 232
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v5}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v1

    .line 231
    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 233
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 234
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 238
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 239
    const v5, 0x3f7ae148    # 0.98f

    invoke-static {v1, v5}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    .line 243
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v8, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget-object v9, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    int-to-float v3, v3

    .line 244
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v10

    mul-float/2addr v3, v10

    invoke-direct {v8, v9, v3}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    .line 243
    invoke-static {v5, v8}, Lcom/android/launcher3/dragndrop/DragView;->access$602(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 245
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v5, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    int-to-float v4, v4

    .line 246
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v9

    mul-float/2addr v4, v9

    invoke-direct {v5, v8, v4}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;-><init>(Landroid/view/View;F)V

    .line 245
    invoke-static {v3, v5}, Lcom/android/launcher3/dragndrop/DragView;->access$702(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 248
    nop

    .line 249
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 250
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 248
    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 252
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/dragndrop/DragView;->access$802(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v3}, Lcom/android/launcher3/dragndrop/DragView;->access$800(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/launcher3/dragndrop/DragView;->access$802(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v3}, Lcom/android/launcher3/dragndrop/DragView;->access$800(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 257
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/launcher3/dragndrop/DragView;->access$902(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->access$900(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->access$902(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->access$900(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/launcher3/dragndrop/DragView$3$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragView$3$1;-><init>(Lcom/android/launcher3/dragndrop/DragView$3;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    :cond_2
    return-void
.end method
