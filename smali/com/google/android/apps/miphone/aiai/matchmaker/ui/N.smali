.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/T;


# instance fields
.field private final wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

.field private final wr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;->wr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    return-void
.end method


# virtual methods
.method public final a(IIIIII)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;->wp:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/N;->wr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v2, p2

    move/from16 v8, p5

    if-ne v2, v8, :cond_0

    move/from16 v6, p3

    move/from16 v9, p6

    if-eq v6, v9, :cond_2

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    move/from16 v9, p6

    :goto_0
    iget-object v10, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v11, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->sc:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uP:I

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    move-result-object v1

    iget-object v12, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iget-boolean v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    move v4, p1

    move v5, v2

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->a(ZIIIIII)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    move-result-object v2

    invoke-virtual {v1, v12}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    iput-object v13, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iput-object v2, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    const/4 v0, 0x3

    iput v0, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    iget v0, v13, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput v0, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V

    :cond_2
    return-void
.end method
