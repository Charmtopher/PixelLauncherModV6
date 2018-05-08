.class Lcom/google/android/apps/nexuslauncher/qsb/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic AJ:Lcom/google/android/apps/nexuslauncher/qsb/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/i;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->AJ:Lcom/google/android/apps/nexuslauncher/qsb/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->AJ:Lcom/google/android/apps/nexuslauncher/qsb/i;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->AJ:Lcom/google/android/apps/nexuslauncher/qsb/i;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/i;->AG:Landroid/animation/AnimatorSet;

    .line 113
    :cond_0
    return-void
.end method
