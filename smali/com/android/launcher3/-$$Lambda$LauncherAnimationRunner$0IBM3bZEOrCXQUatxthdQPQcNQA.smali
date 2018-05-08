.class public final synthetic Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/LauncherAnimationRunner;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;->f$0:Lcom/android/launcher3/LauncherAnimationRunner;

    iput-object p2, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;->f$2:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;->f$0:Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/-$$Lambda$LauncherAnimationRunner$0IBM3bZEOrCXQUatxthdQPQcNQA;->f$2:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationStart$0(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
