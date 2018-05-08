.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;


# instance fields
.field private final wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

.field private final wq:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;->wq:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/L;->wq:I

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iput-object p2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    new-instance v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/S;

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/S;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;I)V

    invoke-virtual {v2, p1, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    invoke-static {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput v0, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    iput v3, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    invoke-virtual {v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    :cond_1
    return-void
.end method
