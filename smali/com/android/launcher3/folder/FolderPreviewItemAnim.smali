.class public Lcom/android/launcher3/folder/FolderPreviewItemAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# instance fields
.field finalScale:F

.field finalTransX:F

.field finalTransY:F

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p1, p5, p6, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 51
    sget-object p5, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p5, p5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    .line 52
    sget-object p5, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p5, p5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    .line 53
    sget-object p5, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p5, p5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    .line 55
    sget-object p5, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p1, p3, p4, p5}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 57
    sget-object p3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v5, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 58
    sget-object p3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v3, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 59
    sget-object p3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v4, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 61
    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 62
    iget-object p3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;-><init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Lcom/android/launcher3/folder/PreviewItemDrawingParams;FFFLcom/android/launcher3/folder/PreviewItemManager;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 72
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;

    invoke-direct {p3, p0, p8, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;-><init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Ljava/lang/Runnable;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p7

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z
    .locals 2

    .line 93
    iget v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    iget v1, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    iget v1, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    iget p1, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
