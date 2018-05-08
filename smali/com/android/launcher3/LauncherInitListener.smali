.class public Lcom/android/launcher3/LauncherInitListener;
.super Lcom/android/launcher3/states/InternalStateHandler;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/ActivityControlHelper$ActivityInitListener;


# instance fields
.field private final mOnInitListener:Ljava/util/function/BiPredicate;

.field private mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/states/InternalStateHandler;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    .line 41
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/android/launcher3/LauncherInitListener;Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 54
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 55
    iget-object p1, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 56
    iput-object v0, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 58
    if-eqz p1, :cond_0

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object p2, p2, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean p2, p2, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p1, p3}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final init(Lcom/android/launcher3/Launcher;Z)Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    .line 46
    nop

    .line 47
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    check-cast v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    .line 51
    new-instance v1, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;-><init>(Lcom/android/launcher3/LauncherInitListener;Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Lcom/android/launcher3/Launcher;)V

    iput-object v1, v0, Lcom/android/launcher3/LauncherAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/android/quickstep/OverviewCallbacks;->get(Landroid/content/Context;)Lcom/android/quickstep/OverviewCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewCallbacks;->onInitOverviewTransition()V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public register()V
    .locals 1

    .line 70
    sget-object v0, Lcom/android/launcher3/states/InternalStateHandler;->sScheduler:Lcom/android/launcher3/states/InternalStateHandler$Scheduler;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->schedule(Lcom/android/launcher3/states/InternalStateHandler;)V

    .line 71
    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    .line 82
    iput-object p2, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherInitListener;->register()V

    .line 86
    invoke-interface {p2, p4, p5, p6}, Lcom/android/quickstep/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 87
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p4}, Lcom/android/launcher3/LauncherInitListener;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 76
    sget-object v0, Lcom/android/launcher3/states/InternalStateHandler;->sScheduler:Lcom/android/launcher3/states/InternalStateHandler$Scheduler;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->clearReference(Lcom/android/launcher3/states/InternalStateHandler;)Z

    .line 77
    return-void
.end method
