.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/O;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/O;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wm:Z

    if-nez v1, :cond_2

    const-string v1, "Handling secondary selection."

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->b(Landroid/graphics/PointF;)V

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wm:Z

    goto :goto_1

    :cond_0
    :pswitch_1
    iget-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wm:Z

    const/16 v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Canceling secondary selection; long press = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wm:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cB()V

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
