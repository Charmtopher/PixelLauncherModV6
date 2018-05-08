.class public final synthetic Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$58M8Q8bLHkgPPJiaoVVAlKBEVb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/quickstep/util/RemoteAnimationProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$58M8Q8bLHkgPPJiaoVVAlKBEVb8;->f$0:Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;

    return-void
.end method


# virtual methods
.method public final createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$58M8Q8bLHkgPPJiaoVVAlKBEVb8;->f$0:Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;

    invoke-static {v0, p1}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->lambda$58M8Q8bLHkgPPJiaoVVAlKBEVb8(Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method
