.class Lcom/android/quickstep/RecentsActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$2;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/android/quickstep/RecentsActivity$2;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {p1}, Lcom/android/quickstep/RecentsActivity;->access$100(Lcom/android/quickstep/RecentsActivity;)Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->resetTaskVisuals()V

    .line 200
    return-void
.end method
