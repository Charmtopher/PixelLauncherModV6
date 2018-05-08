.class Lcom/android/launcher3/folder/FolderAnimationManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

.field final synthetic val$btv:Lcom/android/launcher3/BubbleTextView;

.field final synthetic val$initialScale:F

.field final synthetic val$xDistance:F

.field final synthetic val$yDistance:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iput p3, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$xDistance:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$yDistance:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$initialScale:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 322
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 323
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 324
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 325
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 326
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 327
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 312
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$xDistance:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 314
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$yDistance:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 315
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$initialScale:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 316
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->val$initialScale:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 318
    :cond_0
    return-void
.end method
