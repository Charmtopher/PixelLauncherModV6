.class public Lcom/android/launcher3/util/PendingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anim:Landroid/animation/AnimatorSet;

.field private final mEndListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/PendingAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/util/PendingAnimation;->anim:Landroid/animation/AnimatorSet;

    .line 41
    return-void
.end method


# virtual methods
.method public final addEndListener(Ljava/util/function/Consumer;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/util/PendingAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public final finish(ZI)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/util/PendingAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 45
    new-instance v2, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/util/PendingAnimation$OnEndListener;-><init>(ZI)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/util/PendingAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 48
    return-void
.end method
