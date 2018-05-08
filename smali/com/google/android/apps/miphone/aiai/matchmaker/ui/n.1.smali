.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final uX:Landroid/widget/FrameLayout;

.field private final uY:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

.field private final uZ:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;Landroid/widget/FrameLayout;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;->uY:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;->uX:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;->uZ:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;->uY:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;->uX:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;->uZ:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
