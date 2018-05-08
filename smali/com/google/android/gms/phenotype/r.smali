.class final Lcom/google/android/gms/phenotype/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field final synthetic adO:Ljava/lang/String;

.field final synthetic adT:Lcom/google/android/gms/phenotype/k;

.field final synthetic adU:I

.field final synthetic adV:Lcom/google/android/gms/phenotype/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/j;Lcom/google/android/gms/phenotype/k;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/r;->adV:Lcom/google/android/gms/phenotype/j;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/r;->adT:Lcom/google/android/gms/phenotype/k;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/r;->adO:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/phenotype/r;->adU:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->id()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "PhenotypeFlagCommitter"

    iget-object v0, p0, Lcom/google/android/gms/phenotype/r;->adV:Lcom/google/android/gms/phenotype/j;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/j;->packageName:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Retrieving snapshot for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/phenotype/r;->adT:Lcom/google/android/gms/phenotype/k;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/phenotype/r;->adT:Lcom/google/android/gms/phenotype/k;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/phenotype/k;->r(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/phenotype/r;->adV:Lcom/google/android/gms/phenotype/j;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/phenotype/Configurations;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/j;->a(Lcom/google/android/gms/phenotype/Configurations;)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/r;->adV:Lcom/google/android/gms/phenotype/j;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/j;->adF:Lcom/google/android/gms/phenotype/e;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/phenotype/Configurations;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/Configurations;->acL:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/phenotype/n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/phenotype/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/e;->a(Lcom/google/android/gms/internal/cn;)Lcom/google/android/gms/tasks/b;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/phenotype/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/phenotype/s;-><init>(Lcom/google/android/gms/phenotype/r;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/b;->a(Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;

    return-void
.end method
