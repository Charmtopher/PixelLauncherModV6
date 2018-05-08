.class Lcom/android/quickstep/util/RemoteAnimationProvider$1;
.super Lcom/android/launcher3/LauncherAnimationRunner;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/RemoteAnimationProvider;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/Handler;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/quickstep/util/RemoteAnimationProvider$1;->this$0:Lcom/android/quickstep/util/RemoteAnimationProvider;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/quickstep/util/RemoteAnimationProvider$1;->this$0:Lcom/android/quickstep/util/RemoteAnimationProvider;

    invoke-interface {v0, p1}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
