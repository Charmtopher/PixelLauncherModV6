.class Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;B)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method private dispatchOnEndRecursively(Landroid/animation/Animator;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->access$300(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 233
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 234
    goto :goto_0

    .line 236
    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 237
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->access$300(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 238
    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->dispatchOnEndRecursively(Landroid/animation/Animator;)V

    .line 239
    goto :goto_1

    .line 241
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 220
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mCancelled:Z

    .line 221
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p1, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->dispatchOnEndRecursively(Landroid/animation/Animator;)V

    .line 226
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->access$200(Lcom/android/launcher3/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->access$200(Lcom/android/launcher3/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 229
    :cond_0
    return-void
.end method
