.class public abstract Lcom/google/android/gms/phenotype/j;
.super Ljava/lang/Object;


# instance fields
.field protected final adF:Lcom/google/android/gms/phenotype/e;

.field private adG:J

.field protected final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/r;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/r;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/phenotype/c;->H(Landroid/content/Context;)Lcom/google/android/gms/phenotype/e;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/phenotype/j;-><init>(Lcom/google/android/gms/phenotype/e;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/phenotype/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/j;->adF:Lcom/google/android/gms/phenotype/e;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/j;->packageName:Ljava/lang/String;

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Lcom/google/android/gms/phenotype/j;->adG:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/phenotype/j;Ljava/lang/String;Lcom/google/android/gms/phenotype/k;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/phenotype/j;->a(Ljava/lang/String;Lcom/google/android/gms/phenotype/k;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/phenotype/Configurations;)V
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/phenotype/k;I)V
    .locals 4

    if-gtz p3, :cond_2

    const-string p1, "PhenotypeFlagCommitter"

    const-string p3, "No more attempts remaining, giving up for "

    iget-object v0, p0, Lcom/google/android/gms/phenotype/j;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :goto_0
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/google/android/gms/phenotype/k;->r(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/phenotype/j;->adF:Lcom/google/android/gms/phenotype/e;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/j;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/phenotype/m;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/google/android/gms/phenotype/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/phenotype/e;->a(Lcom/google/android/gms/internal/cn;)Lcom/google/android/gms/tasks/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/phenotype/r;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/phenotype/r;-><init>(Lcom/google/android/gms/phenotype/j;Lcom/google/android/gms/phenotype/k;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/b;->a(Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;

    return-void
.end method
