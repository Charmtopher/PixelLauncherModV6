.class final Lcom/google/android/gms/phenotype/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private synthetic adW:Lcom/google/android/gms/phenotype/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->id()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "PhenotypeFlagCommitter"

    iget-object v1, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget-object v1, v1, Lcom/google/android/gms/phenotype/r;->adV:Lcom/google/android/gms/phenotype/j;

    iget-object v1, v1, Lcom/google/android/gms/phenotype/j;->packageName:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Committing snapshot for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, retrying"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/r;->adV:Lcom/google/android/gms/phenotype/j;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget-object v1, v1, Lcom/google/android/gms/phenotype/r;->adO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget-object v2, v2, Lcom/google/android/gms/phenotype/r;->adT:Lcom/google/android/gms/phenotype/k;

    iget-object v3, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget v3, v3, Lcom/google/android/gms/phenotype/r;->adU:I

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/phenotype/j;->a(Lcom/google/android/gms/phenotype/j;Ljava/lang/String;Lcom/google/android/gms/phenotype/k;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/r;->adT:Lcom/google/android/gms/phenotype/k;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/phenotype/s;->adW:Lcom/google/android/gms/phenotype/r;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/r;->adT:Lcom/google/android/gms/phenotype/k;

    invoke-interface {p1, v0}, Lcom/google/android/gms/phenotype/k;->r(Z)V

    :cond_1
    return-void
.end method
