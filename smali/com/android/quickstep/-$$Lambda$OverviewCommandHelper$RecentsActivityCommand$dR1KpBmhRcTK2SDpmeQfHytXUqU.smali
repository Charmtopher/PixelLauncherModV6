.class public final synthetic Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/util/ClipAnimationHelper;

.field private final synthetic f$1:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/ClipAnimationHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;->f$0:Lcom/android/quickstep/util/ClipAnimationHelper;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;->f$1:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;->f$0:Lcom/android/quickstep/util/ClipAnimationHelper;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$OverviewCommandHelper$RecentsActivityCommand$dR1KpBmhRcTK2SDpmeQfHytXUqU;->f$1:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/OverviewCommandHelper$RecentsActivityCommand;->lambda$createWindowAnimation$0(Lcom/android/quickstep/util/ClipAnimationHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/animation/ValueAnimator;)V

    return-void
.end method
