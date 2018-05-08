.class public Lcom/android/launcher3/LauncherStateManager$AnimationConfig;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public duration:J

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mProperSetter:Lcom/android/launcher3/anim/PropertySetter;

.field public userControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method public final getProperSetter(Lcom/android/launcher3/anim/AnimatorSetBuilder;)Lcom/android/launcher3/anim/PropertySetter;
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mProperSetter:Lcom/android/launcher3/anim/PropertySetter;

    if-nez v0, :cond_1

    .line 419
    iget-wide v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    goto :goto_0

    .line 420
    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/PropertySetter$AnimatedPropertySetter;

    iget-wide v1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-direct {v0, v1, v2, p1}, Lcom/android/launcher3/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/android/launcher3/anim/AnimatorSetBuilder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mProperSetter:Lcom/android/launcher3/anim/PropertySetter;

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mProperSetter:Lcom/android/launcher3/anim/PropertySetter;

    return-object p1
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_0

    .line 428
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 430
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 4

    .line 406
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    .line 407
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    .line 408
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mProperSetter:Lcom/android/launcher3/anim/PropertySetter;

    .line 410
    iget-object v3, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 413
    iput-object v2, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 415
    :cond_0
    return-void
.end method

.method public final setAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 434
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 435
    return-void
.end method
