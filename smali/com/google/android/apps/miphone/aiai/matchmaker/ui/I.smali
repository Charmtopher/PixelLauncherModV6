.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;
.super Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic wb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

.field final synthetic wc:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

.field final synthetic wd:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

.field final synthetic we:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->wb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->wc:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->wd:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

    iput-boolean p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->we:Z

    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->wb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->wc:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->wd:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;

    iget-boolean v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/I;->we:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/K;Z)V

    .line 266
    return-void
.end method
