.class Lcom/android/launcher3/widget/WidgetsFullSheet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetsFullSheet;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$000(Lcom/android/launcher3/widget/WidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetsRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setLayoutFrozen(Z)V

    .line 171
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$100(Lcom/android/launcher3/widget/WidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetsListAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$000(Lcom/android/launcher3/widget/WidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetsRecyclerView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->setApplyBitmapDeferred(ZLandroid/support/v7/widget/RecyclerView;)V

    .line 172
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$200(Lcom/android/launcher3/widget/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    return-void
.end method
