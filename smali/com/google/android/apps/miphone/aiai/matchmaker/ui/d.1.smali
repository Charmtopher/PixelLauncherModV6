.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final ux:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

.field private final uy:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;->ux:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;->uy:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;->ux:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;->uy:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uw:J

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cx()V

    const/4 p1, 0x1

    return p1
.end method
