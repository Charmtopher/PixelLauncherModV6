.class Lcom/android/launcher3/folder/PreviewBackground$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$bgMultiplier0:F

.field final synthetic val$bgMultiplier1:F

.field final synthetic val$scale0:F

.field final synthetic val$scale1:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;FFFF)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier1:F

    iput p5, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 373
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier1:F

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier0:F

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    invoke-static {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->access$402(Lcom/android/launcher3/folder/PreviewBackground;F)F

    .line 376
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 377
    return-void
.end method
