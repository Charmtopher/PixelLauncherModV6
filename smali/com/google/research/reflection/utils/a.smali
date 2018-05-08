.class public Lcom/google/research/reflection/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aiv:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/research/reflection/utils/PredictorFactory$1;

    invoke-direct {v0}, Lcom/google/research/reflection/utils/PredictorFactory$1;-><init>()V

    sput-object v0, Lcom/google/research/reflection/utils/a;->aiv:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Lcom/google/research/reflection/predictor/b;Lcom/google/research/reflection/a/c;)Lcom/google/research/reflection/predictor/j;
    .locals 5

    .line 35
    new-instance v0, Lcom/google/research/reflection/predictor/j;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/j;-><init>()V

    .line 36
    sget-object v1, Lcom/google/research/reflection/utils/a;->aiv:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-static {v2, p1}, Lcom/google/research/reflection/predictor/g;->a(Ljava/lang/String;Lcom/google/research/reflection/a/c;)Lcom/google/research/reflection/predictor/g;

    move-result-object v3

    .line 38
    sget-object v4, Lcom/google/research/reflection/utils/a;->aiv:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/google/research/reflection/predictor/j;->a(Lcom/google/research/reflection/predictor/g;I)V

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/research/reflection/predictor/j;->c(Lcom/google/research/reflection/predictor/b;)V

    .line 42
    return-object v0
.end method
