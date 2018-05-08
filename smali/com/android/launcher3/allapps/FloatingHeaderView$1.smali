.class Lcom/android/launcher3/allapps/FloatingHeaderView$1;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0}, Landroid/support/v7/widget/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$000(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$100(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$100(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$000(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    neg-int p1, p1

    .line 58
    iget-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-static {p2, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->access$200(Lcom/android/launcher3/allapps/FloatingHeaderView;I)V

    .line 59
    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->apply()V

    .line 60
    return-void
.end method
