.class Lcom/android/launcher3/popup/ArrowPopup$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/ArrowPopup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 373
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 374
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    .line 377
    invoke-virtual {v0}, Lcom/android/launcher3/popup/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    const/16 v1, 0x20

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 378
    return-void
.end method
