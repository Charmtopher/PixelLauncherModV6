.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/y;
.super Lcom/google/android/apps/miphone/aiai/matchmaker/api/ISettingsCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/y;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/ISettingsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdatedSettings(Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;)V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/y;->vr:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    const-string v1, "Gleams enabled: %s, Assist Enabled: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iget-boolean v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iget-boolean v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->ve:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iput-object p1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    .line 185
    return-void
.end method
