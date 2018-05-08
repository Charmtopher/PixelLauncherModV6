.class Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

.field final synthetic val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

.field final synthetic val$previewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field final synthetic val$scale0:F

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Lcom/android/launcher3/folder/PreviewItemDrawingParams;FFFLcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iput p3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transX0:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transY0:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$scale0:F

    iput-object p6, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$previewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transX0:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget v2, v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    iget v3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transX0:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transY0:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget v2, v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    iget v3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transY0:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$scale0:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget v2, v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    iget v3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$scale0:F

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 69
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$previewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 70
    return-void
.end method
