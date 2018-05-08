.class Lcom/android/launcher3/allapps/DiscoveryBounce$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->handleClose(Z)V

    .line 57
    return-void
.end method
