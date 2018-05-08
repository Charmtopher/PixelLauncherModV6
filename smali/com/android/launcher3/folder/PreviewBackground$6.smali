.class Lcom/android/launcher3/folder/PreviewBackground$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->access$502(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 393
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 382
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 385
    :cond_0
    return-void
.end method
