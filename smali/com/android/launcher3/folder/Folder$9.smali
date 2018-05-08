.class Lcom/android/launcher3/folder/Folder$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 636
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/Folder;->access$400(Lcom/android/launcher3/folder/Folder;Z)V

    .line 637
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 640
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 643
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    const/16 v1, 0x20

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 644
    return-void
.end method
