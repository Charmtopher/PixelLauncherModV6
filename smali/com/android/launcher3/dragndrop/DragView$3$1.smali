.class Lcom/android/launcher3/dragndrop/DragView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/dragndrop/DragView$3;

.field final synthetic val$dr:Landroid/graphics/drawable/Drawable;

.field final synthetic val$mask:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView$3;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$mask:Landroid/graphics/Path;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$dr:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$mask:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->access$1002(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$dr:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->access$1102(Lcom/android/launcher3/dragndrop/DragView;Z)Z

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    invoke-virtual {v0, v2}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {v1, v0}, Lcom/android/launcher3/dragndrop/DragView;->access$1202(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/ColorMatrixColorFilter;)Landroid/graphics/ColorMatrixColorFilter;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->access$1300(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 278
    return-void
.end method
