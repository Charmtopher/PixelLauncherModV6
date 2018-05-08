.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;
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

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;->wq:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/M;->wq:I

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iput-object p2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object p2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/Q;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/Q;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;I)V

    invoke-virtual {p2, p1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;)V

    :cond_0
    return-void
.end method
