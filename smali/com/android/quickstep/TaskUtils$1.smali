.class Lcom/android/quickstep/TaskUtils$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# instance fields
.field isFirstFrame:Z

.field mTaskAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mViewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic val$crop:Landroid/graphics/Rect;

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$recentsInterpolator:Lcom/android/quickstep/RecentsAnimationInterpolator;

.field final synthetic val$skipViewChanges:Z

.field final synthetic val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$v:Lcom/android/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RecentsAnimationInterpolator;ZLandroid/graphics/Matrix;Landroid/graphics/Rect;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 8

    .line 152
    iput-object p1, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/TaskUtils$1;->val$recentsInterpolator:Lcom/android/quickstep/RecentsAnimationInterpolator;

    iput-boolean p3, p0, Lcom/android/quickstep/TaskUtils$1;->val$skipViewChanges:Z

    iput-object p4, p0, Lcom/android/quickstep/TaskUtils$1;->val$matrix:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/android/quickstep/TaskUtils$1;->val$crop:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/quickstep/TaskUtils$1;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 155
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x42960000    # 75.0f

    const/high16 v5, 0x42960000    # 75.0f

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/quickstep/TaskUtils$1;->mViewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 156
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/android/quickstep/TaskUtils$1;->mTaskAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/TaskUtils$1;->isFirstFrame:Z

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 11

    .line 163
    iget-object v0, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getSurface(Landroid/view/View;)Landroid/view/Surface;

    move-result-object v0

    .line 164
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getNextFrameNumber(Landroid/view/Surface;)J

    move-result-wide v3

    goto :goto_0

    .line 165
    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    .line 167
    const-string p1, "TaskUtils"

    const-string v0, "Failed to animate, surface got destroyed."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$recentsInterpolator:Lcom/android/quickstep/RecentsAnimationInterpolator;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/RecentsAnimationInterpolator;->interpolate(F)Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;

    move-result-object p1

    .line 172
    iget-boolean v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$skipViewChanges:Z

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iget v2, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 174
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iget v2, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskScale:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 175
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iget v2, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskX:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setTranslationX(F)V

    .line 176
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iget v2, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->taskY:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setTranslationY(F)V

    .line 177
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$v:Lcom/android/quickstep/views/TaskView;

    iget-object v2, p0, Lcom/android/quickstep/TaskUtils$1;->mViewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$matrix:Landroid/graphics/Matrix;

    iget v2, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winScale:F

    iget v5, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winScale:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 181
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$matrix:Landroid/graphics/Matrix;

    iget v2, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winX:F

    iget v5, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winY:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 182
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$crop:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/quickstep/RecentsAnimationInterpolator$TaskWindowBounds;->winCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    new-instance p1, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/android/quickstep/TaskUtils$1;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_5

    aget-object v7, v1, v6

    .line 186
    iget v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v8, :cond_3

    .line 187
    iget-object v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v9, p0, Lcom/android/quickstep/TaskUtils$1;->mTaskAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v9, v9, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, v8, v9}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 191
    iget-object v8, p0, Lcom/android/quickstep/TaskUtils$1;->val$matrix:Landroid/graphics/Matrix;

    iget-object v9, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget-object v10, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    iget-object v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v9, p0, Lcom/android/quickstep/TaskUtils$1;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v8, v9}, Lcom/android/systemui/shared/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 193
    iget-object v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v9, p0, Lcom/android/quickstep/TaskUtils$1;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {p1, v8, v9}, Lcom/android/systemui/shared/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 195
    iget-boolean v8, p0, Lcom/android/quickstep/TaskUtils$1;->val$skipViewChanges:Z

    if-nez v8, :cond_3

    .line 196
    iget-object v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p1, v8, v0, v3, v4}, Lcom/android/systemui/shared/system/TransactionCompat;->deferTransactionUntil(Lcom/android/systemui/shared/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 199
    :cond_3
    iget-boolean v8, p0, Lcom/android/quickstep/TaskUtils$1;->isFirstFrame:Z

    if-eqz v8, :cond_4

    .line 200
    iget-object v7, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p1, v7}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Lcom/android/systemui/shared/system/SurfaceControlCompat;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 185
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 203
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/system/TransactionCompat;

    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 206
    iget-object p1, p0, Lcom/android/quickstep/TaskUtils$1;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 207
    iput-boolean v5, p0, Lcom/android/quickstep/TaskUtils$1;->isFirstFrame:Z

    .line 208
    return-void
.end method
