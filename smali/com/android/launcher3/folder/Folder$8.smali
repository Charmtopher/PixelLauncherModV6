.class Lcom/android/launcher3/folder/Folder$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$updateAnimationFlag:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder$8;->val$updateAnimationFlag:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 558
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {p1}, Lcom/android/launcher3/ExtendedEditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x279

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 560
    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 562
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->access$300(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    move-result-object p1

    iget-object v0, p1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x409ccccd    # 4.9f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;

    invoke-direct {v5, p1, v3}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0x12c

    const/16 v6, 0x96

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;

    invoke-direct {v0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 564
    :goto_1
    iget-boolean p1, p0, Lcom/android/launcher3/folder/Folder$8;->val$updateAnimationFlag:Z

    if-eqz p1, :cond_2

    .line 565
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 566
    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 565
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/launcher3/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 568
    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
