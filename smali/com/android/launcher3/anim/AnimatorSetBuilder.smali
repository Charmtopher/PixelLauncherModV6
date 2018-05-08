.class public Lcom/android/launcher3/anim/AnimatorSetBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mAnims:Ljava/util/ArrayList;

.field private final mInterpolators:Landroid/util/SparseArray;

.field public mOnFinishRunnables:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mInterpolators:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mOnFinishRunnables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Landroid/animation/AnimatorSet;
    .locals 2

    .line 56
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mOnFinishRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/android/launcher3/anim/AnimatorSetBuilder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/anim/AnimatorSetBuilder$1;-><init>(Lcom/android/launcher3/anim/AnimatorSetBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    :cond_0
    return-object v0
.end method

.method public final getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Interpolator;

    return-object p1
.end method

.method public final play(Landroid/animation/Animator;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public final setInterpolator(ILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorSetBuilder;->mInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    return-void
.end method
