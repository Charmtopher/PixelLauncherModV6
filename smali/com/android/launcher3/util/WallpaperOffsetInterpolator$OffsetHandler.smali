.class Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private mAnimating:Z

.field private mAnimationStartOffset:F

.field private mAnimationStartTime:J

.field private mCurrentOffset:F

.field private mFinalOffset:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOffsetX:F

.field private final mWM:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 201
    invoke-static {}, Lcom/android/launcher3/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 202
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 203
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    .line 204
    return-void
.end method

.method private setOffsetSafely(Landroid/os/IBinder;)V
    .locals 3

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-void

    .line 269
    :catch_0
    move-exception p1

    .line 270
    const-string v0, "WPOffsetInterpolator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error updating wallpaper offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 208
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 209
    if-nez v0, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 264
    return-void

    .line 256
    :pswitch_0
    iget p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    iget p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iput p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 258
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->setOffsetSafely(Landroid/os/IBinder;)V

    .line 260
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    .line 261
    return-void

    .line 251
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    div-float p1, v3, p1

    iput p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    .line 252
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    invoke-virtual {p1, v0, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 253
    return-void

    .line 215
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    .line 216
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    .line 217
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartTime:J

    .line 221
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    .line 224
    :pswitch_4
    iget p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 225
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    if-eqz v1, :cond_3

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartTime:J

    sub-long/2addr v5, v7

    .line 228
    long-to-float v1, v5

    const/high16 v7, 0x437a0000    # 250.0f

    div-float/2addr v1, v7

    .line 229
    iget-object v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 230
    iget v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    iget v8, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iget v9, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 232
    const-wide/16 v7, 0xfa

    cmp-long v1, v5, v7

    if-gez v1, :cond_2

    move v2, v4

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    .line 233
    goto :goto_0

    .line 234
    :cond_3
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    .line 237
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    .line 238
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->setOffsetSafely(Landroid/os/IBinder;)V

    .line 241
    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    invoke-virtual {p1, v1, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 243
    :cond_4
    iget-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    if-eqz p1, :cond_5

    .line 245
    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
