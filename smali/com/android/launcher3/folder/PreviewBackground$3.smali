.class Lcom/android/launcher3/folder/PreviewBackground$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$3;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$3;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->access$202(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 262
    return-void
.end method
