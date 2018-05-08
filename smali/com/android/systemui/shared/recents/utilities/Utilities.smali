.class public Lcom/android/systemui/shared/recents/utilities/Utilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;

.field public static final DRAWABLE_RECT:Landroid/util/Property;

.field public static final RECTF_EVALUATOR:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/Utilities$1;

    const-string v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 65
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/Utilities$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "drawableBounds"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    .line 78
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    .line 79
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTraceEvent(Ljava/lang/String;)V
    .locals 2

    .line 266
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 267
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 268
    return-void
.end method

.method public static arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0

    .line 112
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-object p1
.end method

.method public static cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V
    .locals 1

    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 212
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 214
    :cond_0
    return-void
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 123
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 130
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static clamp01(F)F
    .locals 1

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static computeContrastBetweenColors(II)F
    .locals 14

    .line 175
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 176
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 177
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 178
    const v3, 0x3d20e411    # 0.03928f

    cmpg-float v4, v0, v3

    const-wide v5, 0x4003333340000000L    # 2.4000000953674316

    const v7, 0x3f870a3d    # 1.055f

    const v8, 0x3d6147ae    # 0.055f

    const v9, 0x414eb852    # 12.92f

    if-gez v4, :cond_0

    div-float/2addr v0, v9

    goto :goto_0

    :cond_0
    add-float/2addr v0, v8

    div-float/2addr v0, v7

    float-to-double v10, v0

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    .line 179
    :goto_0
    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    div-float/2addr v2, v9

    goto :goto_1

    :cond_1
    add-float/2addr v2, v8

    div-float/2addr v2, v7

    float-to-double v10, v2

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v2, v10

    .line 180
    :goto_1
    cmpg-float v4, p0, v3

    if-gez v4, :cond_2

    div-float/2addr p0, v9

    goto :goto_2

    :cond_2
    add-float/2addr p0, v8

    div-float/2addr p0, v7

    float-to-double v10, p0

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float p0, v10

    .line 181
    :goto_2
    const v4, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v4

    const v10, 0x3f371759    # 0.7152f

    mul-float/2addr v2, v10

    add-float/2addr v0, v2

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    .line 183
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 184
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v1

    .line 185
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 186
    cmpg-float v1, p0, v3

    if-gez v1, :cond_3

    div-float/2addr p0, v9

    goto :goto_3

    :cond_3
    add-float/2addr p0, v8

    div-float/2addr p0, v7

    float-to-double v12, p0

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float p0, v12

    .line 187
    :goto_3
    cmpg-float v1, v11, v3

    if-gez v1, :cond_4

    div-float/2addr v11, v9

    goto :goto_4

    :cond_4
    add-float/2addr v11, v8

    div-float/2addr v11, v7

    float-to-double v11, v11

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 188
    :goto_4
    cmpg-float v1, p1, v3

    if-gez v1, :cond_5

    div-float/2addr p1, v9

    goto :goto_5

    :cond_5
    add-float/2addr p1, v8

    div-float/2addr p1, v7

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float p1, v5

    .line 189
    :goto_5
    mul-float/2addr v4, p0

    mul-float/2addr v10, v11

    add-float/2addr v4, v10

    mul-float/2addr v2, p1

    add-float/2addr v4, v2

    .line 191
    const p0, 0x3d4ccccd    # 0.05f

    add-float/2addr v4, p0

    add-float/2addr v0, p0

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static dpToPx(Landroid/content/res/Resources;F)F
    .locals 1

    .line 259
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2

    .line 324
    if-nez p0, :cond_0

    .line 325
    const-string p0, "N:0,0-0,0"

    return-object p0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 88
    :goto_0
    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Landroid/view/View;

    return-object p0

    .line 92
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 94
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    return-object p0
.end method

.method public static findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    return-object p0
.end method

.method public static getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 0

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static getColorWithOverlay(IIF)I
    .locals 4

    .line 196
    nop

    .line 197
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    .line 198
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 199
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    .line 200
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 201
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    .line 202
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    add-float/2addr p2, v1

    float-to-int p0, p2

    .line 196
    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getNextFrameNumber(Landroid/view/Surface;)J
    .locals 2

    .line 303
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/view/Surface;->getNextFrameNumber()J

    move-result-wide v0

    return-wide v0

    .line 305
    :cond_0
    const-wide/16 v0, -0x1

    .line 303
    return-wide v0
.end method

.method public static getSurface(Landroid/view/View;)Landroid/view/Surface;
    .locals 0

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    .line 314
    if-nez p0, :cond_0

    .line 315
    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_0
    iget-object p0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static isDescendentAccessibilityFocused(Landroid/view/View;)Z
    .locals 5

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 275
    return v1

    .line 278
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 279
    check-cast p0, Landroid/view/ViewGroup;

    .line 280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 281
    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 282
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    return v1

    .line 281
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_2
    return v2
.end method

.method public static mapRange(FFF)F
    .locals 0

    .line 147
    sub-float/2addr p2, p1

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static objectToSet(Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0

    .line 101
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 102
    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-object p1
.end method

.method public static postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 334
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 335
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 336
    return-void
.end method

.method public static removeAnimationListenersRecursive(Landroid/animation/Animator;)V
    .locals 3

    .line 220
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 222
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 227
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/RectF;F)V
    .locals 4

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 163
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 164
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 165
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 166
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 167
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 168
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 169
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 171
    :cond_0
    return-void
.end method

.method public static setViewFrameFromTranslation(Landroid/view/View;)V
    .locals 5

    .line 233
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 237
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 239
    return-void
.end method

.method public static unmapRange(FFF)F
    .locals 0

    .line 156
    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method
