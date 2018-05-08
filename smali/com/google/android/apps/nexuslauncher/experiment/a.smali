.class public Lcom/google/android/apps/nexuslauncher/experiment/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final yQ:Lcom/google/android/gms/phenotype/i;

.field public static yR:Lcom/google/android/gms/phenotype/h;

.field public static yS:Lcom/google/android/gms/phenotype/h;

.field public static yT:Lcom/google/android/gms/phenotype/h;

.field public static yU:Lcom/google/android/gms/phenotype/h;

.field public static yV:Lcom/google/android/gms/phenotype/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/google/android/gms/phenotype/i;

    const-string v1, "phenotype_configs"

    invoke-direct {v0, v1}, Lcom/google/android/gms/phenotype/i;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    .line 19
    new-instance v1, Lcom/google/android/gms/phenotype/i;

    iget-object v3, v0, Lcom/google/android/gms/phenotype/i;->ady:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/phenotype/i;->adz:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/gms/phenotype/i;->adC:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/phenotype/i;->adE:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/phenotype/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    sput-object v1, Lcom/google/android/apps/nexuslauncher/experiment/a;->yQ:Lcom/google/android/gms/phenotype/i;

    const-string v0, "QSBFeature__qsb_is_wide"

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yR:Lcom/google/android/gms/phenotype/h;

    .line 30
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yQ:Lcom/google/android/gms/phenotype/i;

    const-string v1, "QSBFeature__qsb_is_in_experiment"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yS:Lcom/google/android/gms/phenotype/h;

    .line 32
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yQ:Lcom/google/android/gms/phenotype/i;

    const-string v1, "QSBFeature__qsb_kill_switch"

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yT:Lcom/google/android/gms/phenotype/h;

    .line 35
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yQ:Lcom/google/android/gms/phenotype/i;

    const-string v1, "ReflectionFeature__use_rule_based_predictor"

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yU:Lcom/google/android/gms/phenotype/h;

    .line 40
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yQ:Lcom/google/android/gms/phenotype/i;

    const-string v1, "SuggestFeature__use_overview_suggestions"

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->yV:Lcom/google/android/gms/phenotype/h;

    .line 40
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/phenotype/h;->init(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->e(Landroid/content/Context;)V

    .line 25
    return-void
.end method
