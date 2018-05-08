.class Lcom/android/launcher3/Launcher$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$anim:Landroid/animation/AnimatorSet;

.field final synthetic val$bounceAnims:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .locals 0

    .line 1925
    iput-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$10;->val$anim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$10;->val$bounceAnims:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1927
    iget-object v0, p0, Lcom/android/launcher3/Launcher$10;->val$anim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$10;->val$bounceAnims:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1928
    iget-object v0, p0, Lcom/android/launcher3/Launcher$10;->val$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1929
    return-void
.end method
