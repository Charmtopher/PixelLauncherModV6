.class Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

.field final synthetic val$animatorIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;I)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->this$0:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    iput p2, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->val$animatorIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->this$0:Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-static {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->access$300(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)[Landroid/animation/ValueAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$4;->val$animatorIndex:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 234
    return-void
.end method
