.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final ux:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

.field private final uy:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;->ux:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;->uy:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;->ux:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;->uy:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-wide/16 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uw:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uw:J

    goto :goto_0

    :pswitch_1
    iget-wide v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uw:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uw:J

    :cond_1
    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uu:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uu:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->b(Landroid/graphics/PointF;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
