.class Lcom/android/launcher3/folder/PreviewItemManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewItemManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$1;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager$1;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageItemsTransX:F

    .line 259
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$1;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 260
    return-void
.end method
