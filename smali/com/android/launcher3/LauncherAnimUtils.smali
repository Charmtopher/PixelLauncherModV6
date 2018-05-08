.class public Lcom/android/launcher3/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;

.field public static final ELEVATION:Landroid/util/Property;

.field public static final SCALE_PROPERTY:Landroid/util/Property;

.field static sAnimators:Ljava/util/WeakHashMap;

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    .line 43
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 141
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$3;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "drawableAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 154
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    .line 168
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "elevation"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->ELEVATION:Landroid/util/Property;

    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 2

    .line 100
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 101
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 114
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 115
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    new-instance p2, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 117
    return-object p1
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 106
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 108
    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 130
    invoke-static {p0, p0, p1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 135
    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 136
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    new-instance p2, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 138
    return-object p0
.end method

.method public static ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 123
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v4

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    aput p2, v1, v4

    .line 124
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v2

    sget-object p1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p2, v2, [F

    aput p3, p2, v4

    .line 125
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 122
    invoke-static {p0, p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static onDestroyActivity()V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 91
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 92
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 95
    :cond_0
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method
