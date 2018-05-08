.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final vO:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

.field private final vP:Ljava/lang/String;

.field private final vQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;->vO:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;->vP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;->vQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;->vO:Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;->vP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/D;->vQ:Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    :try_start_0
    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;->reportFeedback(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call service - report metrics/feedback."

    invoke-static {v1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
