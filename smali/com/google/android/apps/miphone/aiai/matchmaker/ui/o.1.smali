.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final uY:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

.field private final va:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;->uY:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;->va:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;->uY:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;->va:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->b(Landroid/graphics/PointF;)V

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cx()V

    const/4 p1, 0x1

    return p1
.end method
