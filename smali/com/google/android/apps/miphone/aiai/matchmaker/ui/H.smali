.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;
.super Lcom/google/android/apps/miphone/aiai/matchmaker/api/IContentCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic vZ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

.field final synthetic wa:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

.field final synthetic wb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;->wb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;->vZ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;->wa:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IContentCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;->wb:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;->vZ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/H;->wa:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/J;)V

    .line 214
    return-void
.end method
