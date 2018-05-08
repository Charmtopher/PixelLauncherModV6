.class Lcom/android/launcher3/CellLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher3/CellLayout$4;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 894
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$4;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 908
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$4;->cancelled:Z

    .line 909
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 899
    iget-boolean p1, p0, Lcom/android/launcher3/CellLayout$4;->cancelled:Z

    if-nez p1, :cond_0

    .line 900
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 901
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$4;->val$child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 903
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 904
    iget-object p1, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_1
    return-void
.end method
