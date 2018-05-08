.class public Lcom/google/android/apps/nexuslauncher/c/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/LauncherStateManager$StateListener;


# instance fields
.field private final mClipPath:Landroid/graphics/Path;

.field private mIsRtl:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private yC:Landroid/graphics/Bitmap;

.field private yD:La/a/a/a/a/a/c;

.field private yE:La/a/a/a/a/a/d;

.field public yF:I

.field private yG:I

.field private final yH:Landroid/graphics/Rect;

.field private final yI:Landroid/graphics/RectF;

.field private yJ:Landroid/animation/AnimatorSet;

.field public yK:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yH:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yI:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mClipPath:Landroid/graphics/Path;

    .line 66
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mIsRtl:Z

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/c/a;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yG:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/c/a;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yG:I

    return p1
.end method

.method public static a(Landroid/content/Context;La/a/a/a/a/a/c;Landroid/graphics/Bitmap;Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/c/a;
    .locals 1

    .line 399
    new-instance v0, Lcom/google/android/apps/nexuslauncher/c/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/c/a;-><init>(Landroid/content/Context;)V

    .line 400
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/c/a;->a(La/a/a/a/a/a/c;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 401
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/c/a;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yF:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/c/a;)La/a/a/a/a/a/c;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yD:La/a/a/a/a/a/c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/c/a;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yF:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yF:I

    return v0
.end method

.method private cZ()Z
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 310
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 308
    return v0
.end method

.method private da()V
    .locals 3

    .line 330
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->cZ()Z

    move-result v0

    .line 333
    if-eqz v0, :cond_1

    .line 334
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yK:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    return-void

    .line 337
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/c/-$$Lambda$a$VmQ8_63fWwfHpVyC00UHkAz7hsg;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/c/-$$Lambda$a$VmQ8_63fWwfHpVyC00UHkAz7hsg;-><init>(Lcom/google/android/apps/nexuslauncher/c/a;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yD:La/a/a/a/a/a/c;

    iget v1, v1, La/a/a/a/a/a/c;->aiJ:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/c/a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    :cond_1
    return-void
.end method

.method private synthetic dc()V
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yK:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->cZ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yK:Z

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 321
    return-void

    .line 316
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$VmQ8_63fWwfHpVyC00UHkAz7hsg(Lcom/google/android/apps/nexuslauncher/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->dc()V

    return-void
.end method

.method private onVisibilityChanged(Z)V
    .locals 0

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->da()V

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    .line 353
    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/a/a/c;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 11

    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->clearState()V

    .line 154
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yD:La/a/a/a/a/a/c;

    .line 155
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yC:Landroid/graphics/Bitmap;

    .line 156
    iget-object p2, p1, La/a/a/a/a/a/c;->aiC:La/a/a/a/a/a/d;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yE:La/a/a/a/a/a/d;

    .line 158
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yE:La/a/a/a/a/a/d;

    iget-object p2, p2, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    array-length p2, p2

    .line 159
    int-to-float v0, p2

    iget v1, p1, La/a/a/a/a/a/c;->aiG:F

    div-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    .line 160
    div-float v0, v1, v0

    .line 162
    iget v3, p1, La/a/a/a/a/a/c;->aiI:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 163
    move v3, v5

    goto :goto_0

    .line 162
    :cond_0
    nop

    .line 163
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 165
    nop

    .line 166
    iget p2, p1, La/a/a/a/a/a/c;->aiG:F

    mul-float v0, p2, v2

    .line 173
    move v1, v0

    move p2, v5

    goto :goto_1

    .line 169
    :cond_1
    iget v2, p1, La/a/a/a/a/a/c;->aiH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 173
    move v10, v1

    move v1, v0

    move v0, v10

    :goto_1
    add-int/lit8 v2, p2, 0x1

    new-array v2, v2, [Landroid/animation/Keyframe;

    .line 174
    const/4 v6, 0x0

    .line 175
    move v7, v6

    move v6, v4

    :goto_2
    const/4 v8, 0x2

    if-ge v6, p2, :cond_3

    .line 176
    div-float v9, v7, v0

    .line 177
    invoke-static {v9, v6}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v2, v6

    .line 178
    add-float/2addr v7, v1

    .line 179
    if-nez v6, :cond_2

    iget-boolean v9, p1, La/a/a/a/a/a/c;->aiF:Z

    if-eqz v9, :cond_2

    .line 180
    iget v9, p1, La/a/a/a/a/a/c;->aiH:I

    div-int/2addr v9, v8

    int-to-float v8, v9

    add-float/2addr v7, v8

    .line 175
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 184
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    add-int/lit8 v6, p2, -0x1

    invoke-static {v1, v6}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v2, p2

    .line 186
    const-string p2, "DoodleKeyFrame"

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 187
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 188
    new-instance v1, Lcom/google/android/apps/nexuslauncher/c/b;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/c/b;-><init>(Lcom/google/android/apps/nexuslauncher/c/a;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    new-instance v1, Lcom/google/android/apps/nexuslauncher/c/c;

    invoke-direct {v1, p0, v3, p2}, Lcom/google/android/apps/nexuslauncher/c/c;-><init>(Lcom/google/android/apps/nexuslauncher/c/a;ZLandroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    iget-boolean v0, p1, La/a/a/a/a/a/c;->aiE:Z

    if-eqz v0, :cond_4

    .line 233
    nop

    .line 232
    move v0, v8

    goto :goto_3

    .line 234
    :cond_4
    nop

    .line 232
    move v0, v5

    :goto_3
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 235
    iget v0, p1, La/a/a/a/a/a/c;->aiI:I

    .line 236
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 237
    move v2, v5

    goto :goto_4

    .line 236
    :cond_5
    nop

    .line 237
    move v2, v4

    :goto_4
    iget-boolean p1, p1, La/a/a/a/a/a/c;->aiE:Z

    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    .line 239
    mul-int/lit8 v0, v0, 0x2

    .line 242
    :cond_6
    if-eqz v2, :cond_7

    .line 243
    goto :goto_5

    .line 244
    :cond_7
    sub-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 242
    :goto_5
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 246
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    .line 247
    invoke-virtual {p0, p3, v5}, Lcom/google/android/apps/nexuslauncher/c/a;->b(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 248
    invoke-virtual {p0, p3, v4}, Lcom/google/android/apps/nexuslauncher/c/a;->b(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object p3

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->db()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    .line 253
    :cond_8
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    new-array v0, v8, [Landroid/animation/Animator;

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 255
    return-void
.end method

.method public final b(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 5

    .line 258
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 259
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 261
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 262
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 263
    if-eqz p2, :cond_0

    .line 262
    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 264
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 265
    if-eqz p2, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 266
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    const-wide/16 p1, 0x12c

    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 268
    return-object v2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final clearState()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yK:Z

    .line 276
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yG:I

    .line 277
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yF:I

    .line 278
    return-void
.end method

.method public final db()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yD:La/a/a/a/a/a/c;

    iget v0, v0, La/a/a/a/a/a/c;->aiJ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherStateManager;->addStateListener(Lcom/android/launcher3/LauncherStateManager$StateListener;)V

    .line 75
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 282
    instance-of p1, p2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    .line 285
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->da()V

    .line 290
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yE:La/a/a/a/a/a/d;

    iget-object v0, v0, La/a/a/a/a/a/d;->aiK:[La/a/a/a/a/a/e;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yG:I

    aget-object v0, v0, v1

    .line 99
    iget-object v1, v0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    array-length v1, v1

    .line 100
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 101
    iget-object v3, v0, La/a/a/a/a/a/e;->aiM:[La/a/a/a/a/a/b;

    aget-object v3, v3, v2

    .line 102
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yH:Landroid/graphics/Rect;

    iget v5, v3, La/a/a/a/a/a/b;->aiz:I

    iget v6, v3, La/a/a/a/a/a/b;->aiA:I

    iget v7, v3, La/a/a/a/a/a/b;->aiz:I

    iget v8, v3, La/a/a/a/a/a/b;->width:I

    add-int/2addr v7, v8

    iget v8, v3, La/a/a/a/a/a/b;->aiA:I

    iget v9, v3, La/a/a/a/a/a/b;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yE:La/a/a/a/a/a/d;

    iget v5, v5, La/a/a/a/a/a/d;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 108
    iget v5, v3, La/a/a/a/a/a/b;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 110
    iget v6, v3, La/a/a/a/a/a/b;->aix:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    .line 111
    iget v7, v3, La/a/a/a/a/a/b;->aiy:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    .line 112
    add-float v8, v6, v5

    .line 113
    iget v9, v3, La/a/a/a/a/a/b;->height:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v9, v7

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    iget-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mIsRtl:Z

    if-eqz v4, :cond_1

    .line 117
    iget-boolean v3, v3, La/a/a/a/a/a/b;->aiB:Z

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v3, v6

    .line 123
    sub-float v6, v8, v5

    .line 127
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yI:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yC:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yH:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yI:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 86
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 87
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->getMeasuredHeight()I

    move-result p1

    .line 89
    div-int/lit8 p2, p1, 0x2

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->getMeasuredWidth()I

    move-result v1

    int-to-float v3, v1

    int-to-float v4, p1

    int-to-float v6, p2

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 91
    return-void
.end method

.method public final onStateSetImmediately(Lcom/android/launcher3/LauncherState;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->da()V

    .line 295
    return-void
.end method

.method public final onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->da()V

    .line 305
    return-void
.end method

.method public final onStateTransitionStart$503aab85()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yJ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 300
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 358
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/c/a;->onVisibilityChanged(Z)V

    .line 359
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 363
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 365
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->yK:Z

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->da()V

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/c/a;->onVisibilityChanged(Z)V

    .line 369
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/c/a;->clearState()V

    .line 378
    :cond_0
    return-void
.end method
