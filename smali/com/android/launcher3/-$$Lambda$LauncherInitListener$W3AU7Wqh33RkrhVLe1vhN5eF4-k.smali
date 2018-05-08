.class public final synthetic Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/quickstep/util/RemoteAnimationProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/LauncherInitListener;

.field private final synthetic f$1:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

.field private final synthetic f$2:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherInitListener;Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;->f$0:Lcom/android/launcher3/LauncherInitListener;

    iput-object p2, p0, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;->f$1:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iput-object p3, p0, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;->f$2:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;->f$0:Lcom/android/launcher3/LauncherInitListener;

    iget-object v1, p0, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;->f$1:Lcom/android/launcher3/LauncherAppTransitionManagerImpl;

    iget-object v2, p0, Lcom/android/launcher3/-$$Lambda$LauncherInitListener$W3AU7Wqh33RkrhVLe1vhN5eF4-k;->f$2:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/LauncherInitListener;->lambda$init$0(Lcom/android/launcher3/LauncherInitListener;Lcom/android/launcher3/LauncherAppTransitionManagerImpl;Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
