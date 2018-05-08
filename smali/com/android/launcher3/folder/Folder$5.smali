.class Lcom/android/launcher3/folder/Folder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$a:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$5;->val$a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 466
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/Folder;->access$202(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 467
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 460
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 461
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$5;->val$a:Landroid/animation/AnimatorSet;

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/Folder;->access$202(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 462
    return-void
.end method
