.class Lcom/android/launcher3/folder/PreviewItemManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewItemManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$2;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$2;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 266
    return-void
.end method
