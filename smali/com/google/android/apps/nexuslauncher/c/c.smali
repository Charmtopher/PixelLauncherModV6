.class Lcom/google/android/apps/nexuslauncher/c/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic yM:Lcom/google/android/apps/nexuslauncher/c/a;

.field yN:Z

.field final synthetic yO:Z

.field final synthetic yP:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/c/a;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yM:Lcom/google/android/apps/nexuslauncher/c/a;

    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yO:Z

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yP:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 215
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yN:Z

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yM:Lcom/google/android/apps/nexuslauncher/c/a;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/c/a;->b(Lcom/google/android/apps/nexuslauncher/c/a;)La/a/a/a/a/a/c;

    move-result-object p1

    iget-boolean p1, p1, La/a/a/a/a/a/c;->aiE:Z

    if-eqz p1, :cond_1

    .line 221
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yN:Z

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yM:Lcom/google/android/apps/nexuslauncher/c/a;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/c/a;->c(Lcom/google/android/apps/nexuslauncher/c/a;)I

    .line 224
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yN:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yN:Z

    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yM:Lcom/google/android/apps/nexuslauncher/c/a;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/c/a;->c(Lcom/google/android/apps/nexuslauncher/c/a;)I

    .line 228
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 203
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yO:Z

    if-nez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yM:Lcom/google/android/apps/nexuslauncher/c/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/c/a;->b(Lcom/google/android/apps/nexuslauncher/c/a;I)I

    .line 208
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yP:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/c;->yM:Lcom/google/android/apps/nexuslauncher/c/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/c/a;->b(Lcom/google/android/apps/nexuslauncher/c/a;)La/a/a/a/a/a/c;

    move-result-object v0

    iget v0, v0, La/a/a/a/a/a/c;->aiH:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 210
    :cond_0
    return-void
.end method
