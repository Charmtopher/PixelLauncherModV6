.class public Lcom/android/quickstep/AnimatedFloat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static VALUE:Landroid/util/FloatProperty;


# instance fields
.field private final mUpdateCallback:Ljava/lang/Runnable;

.field private mValueAnimator:Landroid/animation/ObjectAnimator;

.field public value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/quickstep/AnimatedFloat$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    .line 51
    sget-object v0, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    .line 52
    iget-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/quickstep/AnimatedFloat$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AnimatedFloat$2;-><init>(Lcom/android/quickstep/AnimatedFloat;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public cancelAnimation()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 78
    :cond_0
    return-void
.end method

.method public finishAnimation()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 84
    :cond_0
    return-void
.end method

.method public getCurrentAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public updateValue(F)V
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput p1, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 70
    iget-object p1, p0, Lcom/android/quickstep/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 72
    :cond_0
    return-void
.end method
