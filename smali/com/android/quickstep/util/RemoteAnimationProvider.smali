.class public interface abstract Lcom/android/quickstep/util/RemoteAnimationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static showOpeningTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 6

    .line 45
    new-instance v0, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    .line 46
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 47
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 48
    const v4, 0x7fffffff

    goto :goto_1

    .line 49
    :cond_0
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 50
    :goto_1
    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/shared/system/TransactionCompat;->setLayer(Lcom/android/systemui/shared/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 51
    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/TransactionCompat;->show(Lcom/android/systemui/shared/system/SurfaceControlCompat;)Lcom/android/systemui/shared/system/TransactionCompat;

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    .line 54
    return-void
.end method


# virtual methods
.method public abstract createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end method

.method public toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;
    .locals 6

    .line 34
    new-instance v1, Lcom/android/quickstep/util/RemoteAnimationProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/util/RemoteAnimationProvider$1;-><init>(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/Handler;)V

    .line 40
    new-instance p1, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    const-wide/16 v4, 0x0

    move-object v0, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method
