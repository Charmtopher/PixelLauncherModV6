.class public Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public taskScale:F

.field public taskX:F

.field public taskY:F

.field public winCrop:Landroid/graphics/Rect;

.field public winScale:F

.field public winX:F

.field public winY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskX:F

    .line 31
    iput v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskY:F

    .line 33
    iput v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winScale:F

    .line 34
    iput v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winX:F

    .line 35
    iput v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winY:F

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winCrop:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "taskScale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " taskX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " taskY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " winScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " winX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " winY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " winCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
